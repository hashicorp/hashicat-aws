terraform {
  backend "remote" {
    hostname = "app.terraform.io"
    organization = "Microlise"
    workspaces {
      name = "hashicat-aws"
    }
  }
}
