terraform {
  backend "remote" {
    hostname = "app.terraform.io"
    organization = "jperedoaws"
    workspaces {
      name = "hashicat-aws"
    }
  }
}
