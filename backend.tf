terraform {
  backend "s3" {
    bucket = "postech-soat-bucket"
    key    = "s3-github-actions/kubernets/terraform.tfstate"

    region  = "us-east-1"
    encrypt = true
  }

  required_version = ">= 1.2.0"

}
