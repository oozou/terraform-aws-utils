provider "aws" {
  region = "ap-southeast-1"
  profile = "sandbox"
}

module "security_utils" {
    source = "../.."
    is_enabled_ebs_encryption = true
    ebs_kms_key = null
    is_enabled_s3_account_public_access_block = true
  
}

