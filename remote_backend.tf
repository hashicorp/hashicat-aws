terraform {
  backend "remote" {
    hostname = "app.terraform.io"
    organization = "shanazon-training"
    workspaces {
      name = "hashicat-aws"
    }
  }
}
