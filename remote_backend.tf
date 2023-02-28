terraform {
  backend "remote" {
    hostname = "app.terraform.io"
    organization = "Ipro-Tech-Test"
    workspaces {
      name = "hashicat-aws"
    }
  }
}
