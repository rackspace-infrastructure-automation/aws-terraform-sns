# aws-terraform-sns

This module sets up an SNS topic and adds up to 5 subscriptions.

## Basic Usage

```HCL
module "sns" {
  source = "git@github.com:rackspace-infrastructure-automation/aws-terraform-sns//?ref=v0.12.0"

  name = "my-example-topic"

}
```

Full working references are available at [examples](examples)

## Terraform 0.12 upgrade

Several changes were required while adding terraform 0.12 compatibility.  The following changes should be  
made when upgrading from a previous release to version 0.12.0 or higher.

### Terraform State File

Several resources were updated with new logical names, better meet current Rackspace style guides.  
The following statements can be used to update existing resources.  In each command, `<MODULE_NAME>`  
should be replaced with the logic name used where the module is referenced.

```
terraform state mv module.<MODULE_NAME>.aws_sns_topic.MySNSTopic module.<MODULE_NAME>.aws_sns_topic.topic
terraform state mv module.<MODULE_NAME>.aws_sns_topic_subscription.Subscription1 module.<MODULE_NAME>.aws_sns_topic_subscription.subscription1
terraform state mv module.<MODULE_NAME>.aws_sns_topic_subscription.Subscription2 module.<MODULE_NAME>.aws_sns_topic_subscription.subscription2
terraform state mv module.<MODULE_NAME>.aws_sns_topic_subscription.Subscription3 module.<MODULE_NAME>.aws_sns_topic_subscription.subscription3
terraform state mv module.<MODULE_NAME>.aws_sns_topic_subscription.Subscription4 module.<MODULE_NAME>.aws_sns_topic_subscription.subscription4
terraform state mv module.<MODULE_NAME>.aws_sns_topic_subscription.Subscription5 module.<MODULE_NAME>.aws_sns_topic_subscription.subscription5
```

### Module variables

The following module variables were updated to better meet current Rackspace style guides:

- `topic_name` -> `name`

### Limitations  
This module does not support `email` or `email-json` as a protocol as  Terraform does not currently support them. See: https://www.terraform.io/docs/providers/aws/r/sns_topic_subscription.html for more details.

## Providers

| Name | Version |
|------|---------|
| aws | >= 2.1.0 |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:-----:|
| create\_subscription\_1 | Set to true to enable subscription. | `bool` | `false` | no |
| create\_subscription\_2 | Set to true to enable subscription. | `bool` | `false` | no |
| create\_subscription\_3 | Set to true to enable subscription. | `bool` | `false` | no |
| create\_subscription\_4 | Set to true to enable subscription. | `bool` | `false` | no |
| create\_subscription\_5 | Set to true to enable subscription. | `bool` | `false` | no |
| endpoint\_1 | The subscription's endpoint #1. | `string` | `""` | no |
| endpoint\_2 | The subscription's endpoint #2. | `string` | `""` | no |
| endpoint\_3 | The subscription's endpoint #3. | `string` | `""` | no |
| endpoint\_4 | The subscription's endpoint #4. | `string` | `""` | no |
| endpoint\_5 | The subscription's endpoint #5. | `string` | `""` | no |
| endpoint\_auto\_confirms\_1 | Boolean indicating whether endpoint #1 is capable of auto confirming subscription (required for HTTP protocols). | `bool` | `false` | no |
| endpoint\_auto\_confirms\_2 | Boolean indicating whether endpoint #2 is capable of auto confirming subscription (required for HTTP protocols). | `bool` | `false` | no |
| endpoint\_auto\_confirms\_3 | Boolean indicating whether endpoint #3 is capable of auto confirming subscription (required for HTTP protocols). | `bool` | `false` | no |
| endpoint\_auto\_confirms\_4 | Boolean indicating whether endpoint #4 is capable of auto confirming subscription (required for HTTP protocols). | `bool` | `false` | no |
| endpoint\_auto\_confirms\_5 | Boolean indicating whether endpoint #5 is capable of auto confirming subscription (required for HTTP protocols). | `bool` | `false` | no |
| name | A name for the topic | `string` | n/a | yes |
| protocol\_1 | The protocol you want to use in your endpoint #1. Supported protocols include: http, https, sms, sqs, application, lambda. | `string` | `""` | no |
| protocol\_2 | The protocol you want to use in your endpoint #2. Supported protocols include: http, https, sms, sqs, application, lambda. | `string` | `""` | no |
| protocol\_3 | The protocol you want to use in your endpoint #3. Supported protocols include: http, https, sms, sqs, application, lambda. | `string` | `""` | no |
| protocol\_4 | The protocol you want to use in your endpoint #4. Supported protocols include: http, https, sms, sqs, application, lambda. | `string` | `""` | no |
| protocol\_5 | The protocol you want to use in your endpoint #5. Supported protocols include: http, https, sms, sqs, application, lambda. | `string` | `""` | no |

## Outputs

| Name | Description |
|------|-------------|
| topic\_arn | The ARN of the SNS Topic |
| topic\_id | The id of the SNS topic. |

