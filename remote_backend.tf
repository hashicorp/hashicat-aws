terraform {
  backend "remote" {
    hostname = "app.terraform.io"
    organization = "JieunHashiCatAWS"
    workspaces {
      name = "hashicat-aws"
    }
  }
}
