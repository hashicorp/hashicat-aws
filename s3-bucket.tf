module "s3_bucket" {
  source  = "app.terraform.io/AnimalLogic26/s3-bucket/aws"
  version = "2.8.0"

  bucket = "akarshikapoor"
  acl    = "private"

  versioning = {
    enabled = true
  }

}