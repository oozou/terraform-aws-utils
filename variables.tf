variable "is_enabled_ebs_encryption" {
  description = "Whether or not default EBS encryption is enabled"
  type        = bool
  default     = true
}

variable "ebs_kms_key" {
  description = "The ARN of the AWS Key Management Service (AWS KMS) customer master key (CMK) to use to encrypt the EBS volume."
  type        = string
  default     = null
}