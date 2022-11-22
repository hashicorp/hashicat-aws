module "s3-bucket" {
  source  = "app.terraform.io/TerraformOnAWS/s3-bucket/aws"
  version = "1.0.0"
  bucket = "testjasonbucket1343234"
  bucket_prefix = "jasonyu"
}