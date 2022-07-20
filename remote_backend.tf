terraform {
  backend "remote" {
    hostname = "app.terraform.io"
    organization = "TuxyIO"
    workspaces {
      name = "hashicat-aws"
    }
  }
}
