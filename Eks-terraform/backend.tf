terraform {
  backend "s3" {
    bucket = "saritha1" # Replace with your actual S3 bucket name
    key    = "EKS/terraform.tfstate"
    access_key = "AKIA2I6KT5VEXKMVWOPP"
    secret_key = "sxG89uxtxb+dFf6PanPZSVRjZeGqCA6mD2PS6NF
    region = "us-east-1"
  }
}
