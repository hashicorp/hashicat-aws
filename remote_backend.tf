terraform {
  backend "remote" {
    hostname = "app.terraform.io"
    organization = "nikhil-telstra"
    workspaces {
      name = "hashicat-aws"
    }
  }
}
