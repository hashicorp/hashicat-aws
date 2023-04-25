terraform {
  backend "remote" {
    hostname = "app.terraform.io"
    organization = "training_smha"
    workspaces {
      name = "hashicat-aws"
    }
  }
}
