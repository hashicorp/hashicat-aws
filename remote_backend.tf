terraform {
  backend "remote" {
    hostname = "app.terraform.io"
    organization = "SowmyaGeico"
    workspaces {
      name = "hashicat-aws"
    }
  }
}
