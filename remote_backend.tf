terraform {
  cloud {
    organization = "workshop-yulei"

    workspaces {
      name = "hashicat-aws"
    }
  }
}