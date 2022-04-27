# root main.tf

provider "aws" {
  region = "us-east-2"
  default_tags {
    tags = {
      Env = "dev"
    }
  }
}



module "finance-bucket" {
  count   = 2
  source  = "./s3-bucket"
  team    = "finance"
  service = "s3"
  extra_tags = {
    contact = "hermine"
  }
}


module "devops-bucket" {
  count   = 2
  source  = "./s3-bucket"
  team    = "devops"
  service = "s3"
}