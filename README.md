# terraform-aws-utils

This module is for creating global config for aws resources (independent of any specific resource).

```terraform
module "utils" {
    source = "git::https://<YOUR_VCS_URL>/terraform-aws-utils?ref=v1.0.0"
    is_enabled_ebs_encryption = true
    ebs_kms_key = null
    is_enabled_s3_account_public_access_block = true
}
```

<!-- BEGIN_TF_DOCS -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 1.0.0 |
| <a name="requirement_aws"></a> [aws](#requirement\_aws) | >= 4.0.0 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_aws"></a> [aws](#provider\_aws) | >= 4.0.0 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [aws_ebs_default_kms_key.this](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/ebs_default_kms_key) | resource |
| [aws_ebs_encryption_by_default.this](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/ebs_encryption_by_default) | resource |
| [aws_s3_account_public_access_block.this](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/s3_account_public_access_block) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_ebs_kms_key"></a> [ebs\_kms\_key](#input\_ebs\_kms\_key) | The ARN of the AWS Key Management Service (AWS KMS) customer master key (CMK) to use to encrypt the EBS volume. | `string` | `null` | no |
| <a name="input_is_enabled_ebs_encryption"></a> [is\_enabled\_ebs\_encryption](#input\_is\_enabled\_ebs\_encryption) | Whether or not default EBS encryption is enabled | `bool` | `true` | no |
| <a name="input_is_enabled_s3_account_public_access_block"></a> [is\_enabled\_s3\_account\_public\_access\_block](#input\_is\_enabled\_s3\_account\_public\_access\_block) | Flag to enable/disable S3 account-level Public Access Block | `bool` | `true` | no |

## Outputs

No outputs.
<!-- END_TF_DOCS -->
