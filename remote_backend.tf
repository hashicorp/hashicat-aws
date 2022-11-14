terraform {
  backend "remote" {
    hostname = "app.terraform.io"
    organization = "Nishiguchi-training"
    workspaces {
      name = "hashicat-aws"
    }
  }
}
