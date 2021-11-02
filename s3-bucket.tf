module "s3_bucket" {
  source = "terraform-aws-modules/s3-bucket/aws"

  bucket = "my-s3-bucket"
  acl    = "private"
  bucket_prefix = "bhup-kumar" 
  
  versioning = {
    enabled = true
  }

}
