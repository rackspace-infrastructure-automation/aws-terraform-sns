## Requirements

No requirements.

## Providers

| Name | Version |
|------|---------|
| aws | n/a |

## Modules

No Modules.

## Resources

| Name |
|------|
| [aws_sns_topic](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/sns_topic) |
| [aws_sns_topic_subscription](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/sns_topic_subscription) |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| create\_subscription\_1 | Set to true to enable subscription. | `string` | `false` | no |
| create\_subscription\_2 | Set to true to enable subscription. | `string` | `false` | no |
| create\_subscription\_3 | Set to true to enable subscription. | `string` | `false` | no |
| create\_subscription\_4 | Set to true to enable subscription. | `string` | `false` | no |
| create\_subscription\_5 | Set to true to enable subscription. | `string` | `false` | no |
| endpoint\_1 | The subscription's endpoint #1. | `string` | `""` | no |
| endpoint\_2 | The subscription's endpoint #2. | `string` | `""` | no |
| endpoint\_3 | The subscription's endpoint #3. | `string` | `""` | no |
| endpoint\_4 | The subscription's endpoint #4. | `string` | `""` | no |
| endpoint\_5 | The subscription's endpoint #5. | `string` | `""` | no |
| protocol\_1 | The protocol you want to use in your endpoint #1. Supported protocols include: http, https, sms, sqs, application, lambda. | `string` | `""` | no |
| protocol\_2 | The protocol you want to use in your endpoint #2. Supported protocols include: http, https, sms, sqs, application, lambda. | `string` | `""` | no |
| protocol\_3 | The protocol you want to use in your endpoint #3. Supported protocols include: http, https, sms, sqs, application, lambda. | `string` | `""` | no |
| protocol\_4 | The protocol you want to use in your endpoint #4. Supported protocols include: http, https, sms, sqs, application, lambda. | `string` | `""` | no |
| protocol\_5 | The protocol you want to use in your endpoint #5. Supported protocols include: http, https, sms, sqs, application, lambda. | `string` | `""` | no |
| topic\_name | A name for the topic | `string` | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| topic\_arn | The ARN of the SNS Topic |
| topic\_id | The id of the SNS topic. |
