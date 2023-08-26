terraform {
  backend "remote" {
    hostname = "app.terraform.io"
    organization = "vmpawan-AWS"
    workspaces {
      name = "hashicat-aws"
    }
  }
}
