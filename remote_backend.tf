terraform {
  backend "remote" {
    hostname = "app.terraform.io"
    organization = "testing-nadeem"
    workspaces {
      name = "hashicat-aws"
    }
  }
}
