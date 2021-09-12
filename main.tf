terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "~> 3.5.0"
    }
  }
}

provider "aws" {
  region = "us-east-1"
  access_key = "AKIAWIMYZ2NIZSOXMZUF"
  secret_key = "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"
}

resource "aws_instance" "saurabh_ec2_instance_1" {
  ami = "ami-0761dd91277e34178"
  instance_type = "t2.micro"
}

resource "aws_budgets_budget" "saurabh_limit_usage" {
  name = "saurabh_aws_budget"
  budget_type = "COST"
  limit_amount = "5"
  limit_unit = "USD"
  time_unit = "DAILY"
  time_period_start = "2021-09-07_00:01"
}