terraform {
  backend "remote" {
    hostname = "app.terraform.io"
    organization = "antoine-lenstra"
    workspaces {
      name = "hashicat-aws"
    }
  }
}

