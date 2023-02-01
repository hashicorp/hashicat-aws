module "s3-bucket" {
  source  = "app.terraform.io/seul-training/s3-bucket/aws"
  version = "3.6.1"
  bucket = "seul-s3-bucket"
  acl    = "private"

}