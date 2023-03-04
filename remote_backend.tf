terraform {
  backend "remote" {
    hostname = "app.terraform.io"
    organization = "myawstest"
    workspaces {
      name = "hashicat-aws"
    }
  }
}
