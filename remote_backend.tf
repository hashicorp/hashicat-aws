terraform {
  backend "remote" {
    hostname     = "app.terraform.io"
    organization = "C-Native-Show-Case"
    workspaces {
      name = "hashicat-aws"
    }
  }
}
