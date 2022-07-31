terraform {
  backend "remote" {
    hostname = "app.terraform.io"
    organization = "IGA_Terra_SP"
    workspaces {
      name = "hashicat-aws"
    }
  }
}
