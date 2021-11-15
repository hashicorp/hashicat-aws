terraform {
  backend "remote" {
    hostname = "app.terraform.io"
    organization = "casey-co-training"
    workspaces {
      name = "hashicat-aws"
    }
  }
}
