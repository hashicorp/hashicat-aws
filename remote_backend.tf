terraform {
  backend "remote" {
    hostname = "app.terraform.io"
    organization = "junhaoc"
    workspaces {
      name = "hashicat-aws"
    }
  }
}
