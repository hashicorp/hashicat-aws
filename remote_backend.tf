terraform {
  backend "remote" {
    hostname = "app.terraform.io"
    organization = "jasensis-tf-lab-aws"
    workspaces {
      name = "hashicat-aws"
    }
  }
}
