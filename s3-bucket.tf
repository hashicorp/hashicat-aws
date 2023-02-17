resource "aws_s3_bucket" "bucket1" {
    bucket = "terratest"
    acl = "private"
}