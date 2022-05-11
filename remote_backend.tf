terraform {
  backend "remote" {
    hostname = "app.terraform.io"
    organization = "tristan-morgan"
    workspaces {
      name = "hashicat-aws"
    }
  }
}
