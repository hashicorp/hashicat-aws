module "s3-bucket" {
  source  = "app.terraform.io/ANGELPEREZPALACIOS-training/s3-bucket/aws"
  version = "3.2.4"
  # insert required variables here
  bucket_prefix = angelperezpalacios
  
}