terraform {
  backend "s3" {
    bucket   = "infrahouse-aws-s3-control"
    key      = "terraform.tfstate"
    region   = "us-west-1"
    role_arn = "arn:aws:iam::990466748045:role/s3-admin"

    dynamodb_table = "infrahouse-aws-control-locks"
    encrypt        = true
  }
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.56"
    }
  }
}
