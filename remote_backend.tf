terraform {
  backend "remote" {
    hostname = "app.terraform.io"
    organization = "aparajithan-vaidyanathan-aws"
    workspaces {
      name = "hashicat-aws"
    }
  }
}
