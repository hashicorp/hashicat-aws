module "s3-bucket" {
  source  = "app.terraform.io/jaja-terraform-workshop/s3-bucket/aws"
  version = "2.8.0"
  bucket_prefix = "my-s3-bucket-for-Gaurav"
}
