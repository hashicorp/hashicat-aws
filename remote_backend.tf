terraform {
  backend "remote" {
    hostname = "app.terraform.io"
    organization = "pola-deltek-session2"
    workspaces {
      name = "hashicat-aws"
    }
  }
}
