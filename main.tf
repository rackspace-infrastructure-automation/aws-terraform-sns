terraform {
  required_version = ">= 0.12"

  required_providers {
    aws = ">= 2.1.0"
  }
}

resource "aws_sns_topic" "MySNSTopic" {
  name = var.topic_name
}

resource "aws_sns_topic_subscription" "Subscription1" {
  count = var.create_subscription_1 ? 1 : 0

  endpoint  = var.endpoint_1
  protocol  = var.protocol_1
  topic_arn = aws_sns_topic.MySNSTopic.arn
}

resource "aws_sns_topic_subscription" "Subscription2" {
  count = var.create_subscription_2 ? 1 : 0

  endpoint  = var.endpoint_2
  protocol  = var.protocol_2
  topic_arn = aws_sns_topic.MySNSTopic.arn
}

resource "aws_sns_topic_subscription" "Subscription3" {
  count = var.create_subscription_3 ? 1 : 0

  endpoint  = var.endpoint_3
  protocol  = var.protocol_3
  topic_arn = aws_sns_topic.MySNSTopic.arn
}

resource "aws_sns_topic_subscription" "Subscription4" {
  count = var.create_subscription_4 ? 1 : 0

  protocol  = var.protocol_4
  topic_arn = aws_sns_topic.MySNSTopic.arn
  endpoint  = var.endpoint_4
}

resource "aws_sns_topic_subscription" "Subscription5" {
  count = var.create_subscription_5 ? 1 : 0

  endpoint  = var.endpoint_5
  protocol  = var.protocol_5
  topic_arn = aws_sns_topic.MySNSTopic.arn
}
