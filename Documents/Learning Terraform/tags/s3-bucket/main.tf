# s3 bucket main.tf

locals {
  tags = merge ({
      service = var.service
      team = var.team
  },   var.extra_tags)
}


resource "random_id" "s3_id" {
  byte_length = 2
}

resource "aws_s3_bucket" "team_bucket" {
  bucket = "${lower(var.team)}-bucket-${random_id.s3_id.dec}"

  tags = local.tags
}

variable "extra_tags" {
  type = map
  default = {}
}