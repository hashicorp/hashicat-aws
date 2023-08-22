terraform {
  backend "remote" {
    hostname = "app.terraform.io"
    organization = "bpain-training"
    workspaces {
      name = "hashicat-aws"
    }
  }
}
