terraform {
  backend "remote" {
    hostname = "app.terraform.io"
    organization = "nc-terraform-chip-ms"
    workspaces {
      name = "hashicat-aws"
    }
  }
}
