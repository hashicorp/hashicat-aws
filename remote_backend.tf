terraform {
  backend "remote" {
    hostname = "app.terraform.io"
    organization = "maureenbarasa-training"
    workspaces {
      name = "hashicat-aws"
    }
  }
}
