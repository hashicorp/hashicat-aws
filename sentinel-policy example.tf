save it as file.sentinel
#Store it in workspac/sentinel

# A sentinel policy for S3 buckets that enforces required tags are provided
# and bucket acl is set to private

import "tfplan/v2" as tfplan

# Filter S3 buckets
s3_buckets = filter tfplan.resource_changes as address, rc {
  rc.type is "aws_s3_bucket" and
  (rc.change.actions contains "create" or rc.change.actions is ["update"])
}

# Rule to require "department" and "environment" tags
required_tags = ["department", "environment"]
tag_violators = filter s3_buckets as address, bucket {
  any required_tags as rtag {
    rtag not in bucket.change.after.tags
  }
}

bucket_should_have_required_tags = rule {
  tag_violators is empty
}

# Filter S3 ACLs and Rule to require "private" ACL on all buckets
s3_bucket_acls = filter tfplan.resource_changes as address, rc {
  rc.type is "aws_s3_bucket_acl" and
  (rc.change.actions contains "create" or rc.change.actions is ["update"])
}
acl_violators = filter s3_bucket_acls as address, bucket {
  bucket.change.after.acl != "private"
}
bucket_acl_should_be_private = rule {
  acl_violators is empty
}


# Main rule that requires other rules to be true

main = rule {
  bucket_should_have_required_tags and
  bucket_acl_should_be_private
}
