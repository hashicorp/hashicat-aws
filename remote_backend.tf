terraform {
  backend "remote" {
    hostname = "app.terraform.io"
    organization = "shriramrajaraman"
    workspaces {
      name = "hashicat-aws"
    }
  }
}
