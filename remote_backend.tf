terraform {
  backend "remote" {
    hostname = "app.terraform.io"
    organization = "nordcloud-kskrypnyk"
    workspaces {
      name = "hashicat-aws"
    }
  }
}
