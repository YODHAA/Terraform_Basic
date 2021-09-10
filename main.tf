terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 3.5.0"
    }
  }
}

provider "aws" {
  region = "us-east-1"
}

resource "aws_budgets_budget" "saurabh_limit_usage" {
  name              = "saurabh_aws_budget"
  budget_type       = "COST"
  limit_amount      = "5"
  limit_unit        = "USD"
  time_unit         = "DAILY"
  time_period_start = "2021-09-07_00:01"
}