terraform {
  backend "remote" {
    hostname = "app.terraform.io"
    organization = "robert-mcleod-phocas"
    workspaces {
      name = "hashicat-aws"
    }
  }
}
