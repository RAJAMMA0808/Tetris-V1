terraform {
 backend "s3" {
    bucket = "benson1"
    key    = "Jenkins/terraform.tfstate"
    region = "us-east-1"
    access_key = "AKIAWGGXJJWKL2VWAEIR"
    secret_key = "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"
  }
}
