terraform {
  cloud {
    organization = "newterraformonawscloud"

    workspaces {
      name = "hashicat-aws"
    }
  }
}