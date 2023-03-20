terraform {
  backend "remote" {
    hostname = "app.terraform.io"
    organization = "RaghuPrakhya"
    workspaces {
      name = "hashicat-aws"
    }
  }
}
