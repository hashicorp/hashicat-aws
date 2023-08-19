terraform {
  backend "remote" {
    hostname = "app.terraform.io"
    organization = "citi-demo-project"
    workspaces {
      name = "hashicat-aws"
    }
  }
}
