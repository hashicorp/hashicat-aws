terraform {
  backend "remote" {
    hostname = "app.terraform.io"
    organization = "ANGELPEREZPALACIOS-training"
    workspaces {
      name = "hashicat-aws"
    }
  }
}
