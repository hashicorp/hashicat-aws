terraform {
  backend "remote" {
    hostname = "app.terraform.io"
    organization = "chip-djl"
    workspaces {
      name = "hashicat-aws"
    }
  }
}
