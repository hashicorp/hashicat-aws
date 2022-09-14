terraform {
  backend "remote" {
    hostname = "app.terraform.io"
    organization = "Technosprout"
    workspaces {
      name = "hashicat-aws"
    }
  }
}
