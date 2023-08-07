terraform {
  backend "remote" {
    hostname = "app.terraform.io"
    organization = "Training-JSUN9884"
    workspaces {
      name = "hashicat-aws"
    }
  }
}
