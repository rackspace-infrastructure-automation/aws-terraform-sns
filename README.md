## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|:----:|:-----:|:-----:|
| create_subscription_1 | Set to true to enable subscription. | string | `false` | no |
| create_subscription_2 | Set to true to enable subscription. | string | `false` | no |
| create_subscription_3 | Set to true to enable subscription. | string | `false` | no |
| create_subscription_4 | Set to true to enable subscription. | string | `false` | no |
| create_subscription_5 | Set to true to enable subscription. | string | `false` | no |
| endpoint_1 | The subscription's endpoint #1. | string | `` | no |
| endpoint_2 | The subscription's endpoint #2. | string | `` | no |
| endpoint_3 | The subscription's endpoint #3. | string | `` | no |
| endpoint_4 | The subscription's endpoint #4. | string | `` | no |
| endpoint_5 | The subscription's endpoint #5. | string | `` | no |
| protocol_1 | The protocol you want to use in your endpoint #1. Supported protocols include: http, https, sms, sqs, application, lambda. | string | `` | no |
| protocol_2 | The protocol you want to use in your endpoint #2. Supported protocols include: http, https, sms, sqs, application, lambda. | string | `` | no |
| protocol_3 | The protocol you want to use in your endpoint #3. Supported protocols include: http, https, sms, sqs, application, lambda. | string | `` | no |
| protocol_4 | The protocol you want to use in your endpoint #4. Supported protocols include: http, https, sms, sqs, application, lambda. | string | `` | no |
| protocol_5 | The protocol you want to use in your endpoint #5. Supported protocols include: http, https, sms, sqs, application, lambda. | string | `` | no |
| topic_name | A name for the topic | string | - | yes |

## Outputs

| Name | Description |
|------|-------------|
| topic_arn |  |
| topic_id | The id of the SNS topic. |
