resource "aws_s3_account_public_access_block" "this" {
  count = var.is_enabled_s3_account_public_access_block ? 1 : 0
  block_public_acls   = true
  block_public_policy = true
  restrict_public_buckets = true
  ignore_public_acls = true
}