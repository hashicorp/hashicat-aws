module "s3-bucket" {
  source  = "app.terraform.io/seul-training/s3-bucket/aws"
  bucket = "seul-s3-bucket"
  acl    = "private"
  versioning = {
    enabled = true
  }
}