terraform {
  backend "s3" {
    bucket = "saritha1" # Replace with your actual S3 bucket name
    key    = "EKS/terraform.tfstate"
    access_key = "AKIAWGGXJJWKL2VWAEIR"
    secret_key = "4Pxvw+xnOocrljx7yt7l5uTgBMFqno9NvM7zVGtv"
    region = "us-east-1"
  }
}
