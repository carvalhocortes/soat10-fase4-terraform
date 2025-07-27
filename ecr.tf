resource "aws_ecr_repository" "repositorio" {
  for_each = toset(var.repository_names)
  name     = each.value

  force_delete = true
}
