terraform {
  backend "remote" {
    hostname = "app.terraform.io"
    organization = "malianyi-geico"
    workspaces {
      name = "hashicat-aws"
    }
  }
}
