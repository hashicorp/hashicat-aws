terraform {
  backend "remote" {
    hostname = "app.terraform.io"
    organization = "ghm-training"
      name = "hashicat-aws"
    }
  }
}
