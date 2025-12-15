module "s3-bucket" {
  source  = "app.terraform.io/my-training-20230902/s3-bucket/aws"
  version = "2.8.0"
  bucket_prefix = "shuichirosugita"
}