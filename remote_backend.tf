terraform {
  backend "remote" {
    hostname = "app.terraform.io"
    organization = "MichelleTieder-Training"
    workspaces {
      name = "hashicat-aws"
    }
  }
}
