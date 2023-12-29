terraform {
 backend "s3" {
    bucket = "benson1"
    key    = "Jenkins/terraform.tfstate"
    region = "us-east-1"
    access_key = "AKIA2I6KT5VEXKMVWOPP"
    secret_key = "sxG89uxtxb+dFf6PanPZSVRjZeGqCA6mD2PS6NF
  }
}
