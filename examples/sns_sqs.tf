terraform {
  required_version = ">= 0.12"
}

provider "aws" {
  region  = "us-west-2"
  version = "~> 2.7"
}

resource "random_string" "sqs_rstring" {
  length  = 18
  upper   = false
  special = false
}

resource "aws_sqs_queue" "my_sqs" {
  name = "${random_string.sqs_rstring.result}-my-example-queue"
}

module "sns_sqs" {
  source = "git@github.com:rackspace-infrastructure-automation/aws-terraform-sns//?ref=v0.12.1"

  name = "${random_string.sqs_rstring.result}-my-example-topic"

  create_subscription_1 = true
  endpoint_1            = aws_sqs_queue.my_sqs.arn
  protocol_1            = "sqs"
}
