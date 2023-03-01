<<<<<<< HEAD
terraform {
  backend "remote" {
    hostname = "app.terraform.io"
    organization = "Blackmosesco"
    workspaces {
      name = "hashicat-aws"
    }
  }
}
=======
terraform {
  cloud {
    organization = "Blackmosesco"

    workspaces {
      name = "hashicat-aws"
    }
  }
}
>>>>>>> faa340127725a3c126ff22e14eb6eda735d776f7
