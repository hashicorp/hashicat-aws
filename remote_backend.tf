terraform {
  backend "remote" {
    hostname = "app.terraform.io"
    organization = "superhashicorpme"
    workspaces {
      name = "hashicat-aws"
    }
  }
}
