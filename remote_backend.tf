terraform {
  backend "remote" {
    hostname = "app.terraform.io"
    organization = "YogeshMuleTestOrg"
    workspaces {
      name = "hashicat-aws"
    }
  }
}
