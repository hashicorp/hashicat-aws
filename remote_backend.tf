terraform {
  cloud {
    organization = "Wednesday"

    workspaces {
      name = "hashicat-aws"
    }
  }
}