terraform {
  backend "remote" {
    hostname = "app.terraform.io"
    organization = "jennellsimon-org"
    workspaces {
      name = "hashicat-aws"
    }
  }
}
