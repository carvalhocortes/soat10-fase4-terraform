terraform {
  backend "s3" {
    bucket = "postech-soat10-s3-prod"
    key    = "github-actions-fiap/kubernets/terraform.tfstate"

    region  = "us-west-2"
    encrypt = true
  }

  required_version = ">= 1.2.0"

}
