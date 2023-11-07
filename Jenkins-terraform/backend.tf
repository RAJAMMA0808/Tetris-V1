terraform {
 backend "s3" {
    bucket = "great-name-terraform-state-2"
    key    = "global/s3/terraform.tfstate"
    region = "us-east-1"
    access_key = "AKIAWGGXJJWKPUDUVPD2"
    secret_key = "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"
  }
}
