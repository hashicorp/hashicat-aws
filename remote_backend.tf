# terraform {
#   backend "remote" {
#     hostname = "app.terraform.io"
#     organization = "test-warnock"
#     workspaces {
#       name = "hashicat-aws"
#     }
#   }
# }
terraform {
  cloud {
    organization = "test-warnock"

    workspaces {
      name = "hashicat-aws"
    }
  }
}