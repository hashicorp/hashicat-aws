terraform {
  backend "remote" {
    hostname = "app.terraform.io"
    organization = "TFCTraining"
    workspaces {
      name = "hashicat-aws"
    }
  }
}
