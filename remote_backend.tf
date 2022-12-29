terraform {
  backend "remote" {
    hostname = "app.terraform.io"
    organization = "ChoiEuiSang-training"
    workspaces {
      name = "hashicat-aws"
    }
  }
}
