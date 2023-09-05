terraform {
  backend "remote" {
    hostname = "app.terraform.io"
    organization = "npgowda-org-aws"
    workspaces {
      name = "hashicat-aws"
    }
  }
}
