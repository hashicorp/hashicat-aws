terraform {
  #backend "remote" {
  #  hostname = "app.terraform.io"
  #  organization = "telstra-yogita"
  #  workspaces {
  #    name = "hashicat-aws"
  #  }
  #}
  backend "s3" {
    bucket         = "yogitad_bucket_webserver_stage"
    key            = "webserverstage/terraform.tfstate"
    region         =  var.region
    # encrypt        = true
  }
}
