terraform {
  backend "remote" {
    hostname = "app.terraform.io"
    organization = "TerraformOnAWS"
    workspaces {
      name = "hashicat-aws"
    }
  }
}
