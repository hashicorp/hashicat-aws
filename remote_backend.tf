terraform {
  backend "remote" {
    hostname = "app.terraform.io"
    organization = "TerraformWorkshop-WesMc"
    workspaces {
      name = "hashicat-aws"
    }
  }
}
