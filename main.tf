/**
 * # aws-terraform-sns
 *
 * This module sets up an SNS topic and adds up to 5 subscriptions.
 *
 * ## Basic Usage
 *
 * ```HCL
 * module "sns" {
 *   source = "git@github.com:rackspace-infrastructure-automation/aws-terraform-sns//?ref=v0.12.0"
 *
 *   name = "my-example-topic"
 *
 * }
 * ```
 *
 * Full working references are available at [examples](examples)
 *
 * ## Terraform 0.12 upgrade
 *
 * Several changes were required while adding terraform 0.12 compatibility.  The following changes should be
 * made when upgrading from a previous release to version 0.12.0 or higher.
 *
 * ### Terraform State File
 *
 * Several resources were updated with new logical names, better meet current Rackspace style guides.
 * The following statements can be used to update existing resources.  In each command, `<MODULE_NAME>`
 * should be replaced with the logic name used where the module is referenced.
 *
 * ```
 * terraform state mv module.<MODULE_NAME>.aws_sns_topic.MySNSTopic module.<MODULE_NAME>.aws_sns_topic.topic
 * terraform state mv module.<MODULE_NAME>.aws_sns_topic_subscription.Subscription1 module.<MODULE_NAME>.aws_sns_topic_subscription.subscription1
 * terraform state mv module.<MODULE_NAME>.aws_sns_topic_subscription.Subscription2 module.<MODULE_NAME>.aws_sns_topic_subscription.subscription2
 * terraform state mv module.<MODULE_NAME>.aws_sns_topic_subscription.Subscription3 module.<MODULE_NAME>.aws_sns_topic_subscription.subscription3
 * terraform state mv module.<MODULE_NAME>.aws_sns_topic_subscription.Subscription4 module.<MODULE_NAME>.aws_sns_topic_subscription.subscription4
 * terraform state mv module.<MODULE_NAME>.aws_sns_topic_subscription.Subscription5 module.<MODULE_NAME>.aws_sns_topic_subscription.subscription5
 * ```
 *
 * ### Module variables
 *
 * The following module variables were updated to better meet current Rackspace style guides:
 *
 * - `topic_name` -> `name`
 *
 * ### Limitations
 * This module does not support `email` or `email-json` as a protocol as  Terraform does not currently support them. See: https://www.terraform.io/docs/providers/aws/r/sns_topic_subscription.html for more details.
 */

terraform {
  required_version = ">= 0.12"

  required_providers {
    aws = ">= 2.7.0"
  }
}

resource "aws_sns_topic" "topic" {
  name = var.name
}

resource "aws_sns_topic_subscription" "subscription1" {
  count = var.create_subscription_1 ? 1 : 0

  endpoint               = var.endpoint_1
  endpoint_auto_confirms = var.endpoint_auto_confirms_1
  protocol               = var.protocol_1
  topic_arn              = aws_sns_topic.topic.arn
}

resource "aws_sns_topic_subscription" "subscription2" {
  count = var.create_subscription_2 ? 1 : 0

  endpoint               = var.endpoint_2
  endpoint_auto_confirms = var.endpoint_auto_confirms_2
  protocol               = var.protocol_2
  topic_arn              = aws_sns_topic.topic.arn
}

resource "aws_sns_topic_subscription" "subscription3" {
  count = var.create_subscription_3 ? 1 : 0

  endpoint               = var.endpoint_3
  endpoint_auto_confirms = var.endpoint_auto_confirms_3
  protocol               = var.protocol_3
  topic_arn              = aws_sns_topic.topic.arn
}

resource "aws_sns_topic_subscription" "subscription4" {
  count = var.create_subscription_4 ? 1 : 0

  endpoint               = var.endpoint_4
  endpoint_auto_confirms = var.endpoint_auto_confirms_4
  protocol               = var.protocol_4
  topic_arn              = aws_sns_topic.topic.arn
}

resource "aws_sns_topic_subscription" "subscription5" {
  count = var.create_subscription_5 ? 1 : 0

  endpoint               = var.endpoint_5
  endpoint_auto_confirms = var.endpoint_auto_confirms_5
  protocol               = var.protocol_5
  topic_arn              = aws_sns_topic.topic.arn
}
