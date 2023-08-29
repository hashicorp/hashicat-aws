terraform {
  backend "remote" {
    hostname = "app.terraform.io"
    organization = "spitzc"
    workspaces {
      name = "hashicat-aws"
    }
  }
}
