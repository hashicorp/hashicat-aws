module "s3_bucket" {
  source  = "app.terraform.io/Escala24x7Ops/s3-bucket/aws"
  version = ">= 2.8.0"

  bucket = "escala24x7ops-dev"
  acl    = "private"

  versioning = {
    enabled = true
  }

}