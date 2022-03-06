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
    key            = var.bucket_path_terraform_state_file
    region         =  var.region
    # encrypt        = true
  }
}
