terraform {
  backend "remote" {
    hostname = "app.terraform.io"
    organization = "munsiddaws"
    workspaces {
      name = "hashicat-aws"
    }
  }
}
