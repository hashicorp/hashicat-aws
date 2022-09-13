terraform {
  backend "remote" {
    hostname = "app.terraform.io"
    organization = "alainacd"
    workspaces {
      name = "hashicat-aws"
    }
  }
}
