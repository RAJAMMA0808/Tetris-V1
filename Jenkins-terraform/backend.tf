terraform {
 backend "s3" {
    bucket = "benson1"
    key    = "Jenkins/terraform.tfstate"
    region = "us-east-1"
    access_key = "AKIAWGGXJJWKFP3PWU4Z"
    secret_key = "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"
  }
}
