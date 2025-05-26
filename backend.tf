terraform {
  backend "s3" {
    bucket = "postech-soat10-bucket"
    key    = "github-actions-fiap/kubernets/terraform.tfstate"

    region  = "us-east-1"
    encrypt = true
  }

  required_version = ">= 1.2.0"

}
