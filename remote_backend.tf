terraform {
  backend "remote" {
    hostname = "app.terraform.io"
    organization = "workshop-luke"
    workspaces {
      name = "hashicat-aws"
    }
  }
}
