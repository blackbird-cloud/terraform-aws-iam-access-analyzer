[![blackbird-logo](https://raw.githubusercontent.com/blackbird-cloud/terraform-module-template/main/.config/logo_simple.png)](https://www.blackbird.cloud)

# AWS IAM Access Analyzer Terraform module
A Terraform module which configures your AWS IAM Access Analyzer. Read [this](https://docs.aws.amazon.com/IAM/latest/UserGuide/what-is-access-analyzer.html) page for more information.

## Example
```hcl
module "accessanalyzer_analyzer" {
  #   source  = "blackbird-cloud/iam-access-analyzer"
  #   version = "~> 1"
  source = "../"
  name   = "my-access-analyzer"
  type   = "ORGANIZATION"
  tags = {
    my-tag = "my-tag"
  }
}
```

## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 1.2 |
| <a name="requirement_aws"></a> [aws](#requirement\_aws) | ~> 5 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_aws"></a> [aws](#provider\_aws) | 5.7.0 |

## Resources

| Name | Type |
|------|------|
| [aws_accessanalyzer_analyzer.default](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/accessanalyzer_analyzer) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_name"></a> [name](#input\_name) | (Required) Name of the Analyzer. | `string` | n/a | yes |
| <a name="input_tags"></a> [tags](#input\_tags) | (Optional) Key-value map of resource tags. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level. | `map(string)` | `{}` | no |
| <a name="input_type"></a> [type](#input\_type) | (Optional) Type of Analyzer. Valid values are ACCOUNT or ORGANIZATION. Defaults to ACCOUNT. | `string` | `"ACCOUNT"` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_accessanalyzer_analyzer"></a> [accessanalyzer\_analyzer](#output\_accessanalyzer\_analyzer) | The created Access Analyzer. |

## About

We are [Blackbird Cloud](https://blackbird.cloud), Amsterdam based cloud consultancy, and cloud management service provider. We help companies build secure, cost efficient, and scale-able solutions.

Checkout our other :point\_right: [terraform modules](https://registry.terraform.io/namespaces/blackbird-cloud)

## Copyright

Copyright © 2017-2023 [Blackbird Cloud](https://www.blackbird.cloud)