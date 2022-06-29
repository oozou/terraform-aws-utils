resource "aws_ebs_encryption_by_default" "this" {
  enabled = var.is_enabled_ebs_encryption
}

resource "aws_ebs_default_kms_key" "this" {
  count   = var.ebs_kms_key != null ? 1 : 0
  key_arn = var.ebs_kms_key
}