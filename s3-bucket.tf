module "s3-bucket" {
  source  = "app.terraform.io/tak-naruoka-training/s3-bucket/aws"
  version = "2.2.0"
  # insert required variables here
  # hendana
  bucket = "my-s3-bucket"
  acl    = "private"

  versioning = {
    enabled = true
  }
}
