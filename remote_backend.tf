terraform {
  cloud {
    organization = "thach-pham-org"

    workspaces {
      name = "hashicat-aws"
    }
  }
}