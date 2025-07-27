variable "aws_region" {
  description = "Região AWS"
  type        = string
  default     = "us-west-2"
}

variable "environment" {
  description = "Ambiente que estão os recursos"
  type        = string
  default     = "prod"
}

variable "repository_names" {
  description = "ECR Repository Names"
  type        = list(string)
  default     = ["fiap-payments-prod", "fiap-production-prod", "fiap-orders-prod"]
}

variable "projectName" {
  type    = string
  default = "eks-fiap-soat10-prod"
}

variable "accessConfig" {
  type    = string
  default = "API_AND_CONFIG_MAP"
}

variable "nodeGroup" {
  type    = string
  default = "fiap-prod"
}

variable "instanceType" {
  type    = string
  default = "t3.medium"
}

variable "aws_account_id" {
  type    = string
  default = "548226336065"
}

variable "policyArn" {
  type    = string
  default = "arn:aws:eks::aws:cluster-access-policy/AmazonEKSClusterAdminPolicy"
}

