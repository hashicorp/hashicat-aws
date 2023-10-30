//--------------------------------------------------------------------
// Modules
module "s3_bucket" {
  source  = "app.terraform.io/pola-deltek-session2/s3-bucket/aws"
  version = "2.8.0"

  bucket_prefix = "pola"
}
