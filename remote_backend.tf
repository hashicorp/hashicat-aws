terraform {
  backend "remote" {
    hostname = "app.terraform.io"
    organization = "SohanitOrg"
    workspaces {
      name = "hashicat-aws"
    }
  }
}
