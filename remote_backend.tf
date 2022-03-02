terraform {
  backend "remote" {
    hostname = "app.terraform.io"
    organization = "telstra-nni-tony"
    workspaces {
      name = "hashicat-aws"
    }
  }
}
