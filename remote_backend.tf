terraform {
  backend "remote" {
    hostname = "app.terraform.io"
    organization = "basitha-com"
    workspaces {
      name = "hashicat-aws"
    }
  }
}
