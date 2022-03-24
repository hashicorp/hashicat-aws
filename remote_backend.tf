terraform {
  cloud {
    organization = "my-organisation-dheeraj"

    workspaces {
      name = "hashicat-aws"
    }
  }
}