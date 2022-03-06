terraform {
  #backend "remote" {
  #  hostname = "app.terraform.io"
  #  organization = "telstra-yogita"
  #  workspaces {
  #    name = "hashicat-aws"
  #  }
  #}
  backend "s3" {
    bucket         = module.s3-bucket.s3_bucket_id
    key            = "webserverstage/terraform.tfstate"
    region         =  var.region
    # encrypt        = true
  }
}
