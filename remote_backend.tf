terraform {
  backend "remote" {
    hostname = "app.terraform.io"
    organization = "thomasngc1"
    workspaces {
      name = "hashicat-aws"
    }
  }
}
