terraform {
  backend "remote" {
    hostname = "app.terraform.io"
    organization = "vaisha1ee-training"
    workspaces {
      name = "hashicat-aws"
    }
  }
}
