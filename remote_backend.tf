terraform {
  backend "remote" {
    hostname = "app.terraform.io"
    organization = "DuPont-Bike-Retreat"
    workspaces {
      name = "hashicat-aws"
    }
  }
}
