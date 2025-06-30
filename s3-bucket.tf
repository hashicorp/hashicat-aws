module "s3-bucket" {
  source  = "SVVS-KOUNDINYA/s3-bucket/aws"
  version = "2.8.0"
  bucket_prefix = "svvskoundinya"
}