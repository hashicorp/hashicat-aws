terraform {
  backend "remote" {
    hostname = "app.terraform.io"
    organization = "christophepaget-training"
    workspaces {
      name = "hashicat-aws"
    }
  }
}
