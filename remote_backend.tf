terraform {
  backend "remote" {
    hostname = "app.terraform.io"
    organization = "nickaws"
    workspaces {
      name = "hashicat-aws"
    }
  }
}
