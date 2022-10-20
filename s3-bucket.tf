module "s3_bucket" {
  source  = "app.terraform.io/Escala24x7Ops/s3-bucket/aws"
  version = ">= 4.9"

  bucket = "escala24x7ops-dev"
  acl    = "private"

  versioning = {
    enabled = true
  }

}