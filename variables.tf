variable "aws_region" {
  description = "Região AWS"
  type        = string
  default     = "us-east-1"
}

variable "environment" {
  description = "Ambiente que estão os recursos"
  type        = string
  default     = "prod"
}

variable "account-id" {
  description = "AWS AccountId"
  type        = string
  default     = "696818665598"
}

variable "repository_name" {
  description = "ECR Repository Name"
  type        = string
  default     = "FIAP-prod"
}

variable "image_name" {
  description = "Docker image name"
  type        = string
}

variable "projectName" {
  type    = string
  default = "EKS-FIAP-prod"
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
  default = "t2.micro"
}

variable "labRole" {
  type    = string
  default = "arn:aws:iam::696818665598:role/LabRole"
}

variable "principalArn" {
  type    = string
  default = "arn:aws:iam::696818665598:role/voclabs"
}

variable "policyArn" {
  type    = string
  default = "arn:aws:eks::aws:cluster-access-policy/AmazonEKSClusterAdminPolicy"
}

variable "cluster_name" {
  description = "Nome do cluster EKS"
  type        = string
  default     = "fiap-prod"
}
