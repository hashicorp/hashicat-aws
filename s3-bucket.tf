resource "aws_s3_bucket" "bucket1" {
    bucket = "hashicat_tf_bucket"
    acl = "private"
}