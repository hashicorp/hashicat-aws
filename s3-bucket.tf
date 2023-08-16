module "s3_bucket" {
  source  = "app.terraform.io/jasensis-tf-lab-aws/s3-bucket/aws"
  version = "2.8.0"
  bucket_prefix = "my-s3-bucket-jasensis-tf-test"
}