terraform {
  backend "remote" {
    hostname = "app.terraform.io"
    organization = "yeom-demo"
    workspaces {
      name = "hashicat-aws"
    }
  }
}
