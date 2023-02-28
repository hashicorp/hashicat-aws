terraform {
  cloud {
    organization = "Blackmosesco"

    workspaces {
      name = "hashicat-aws"
    }
  }
}