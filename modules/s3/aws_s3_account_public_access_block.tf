resource "aws_s3_account_public_access_block" "this" {
  block_public_acls   = false
  block_public_policy = false
}