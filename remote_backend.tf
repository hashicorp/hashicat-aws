terraform {
  cloud {
    organization = "NovoNordisk"

    workspaces {
      name = "hashicat-aws"
    }
  }
}