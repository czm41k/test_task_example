resource "aws_ecr_repository" "this" {
  name                 = "${var.owner}-ecr-${var.env}"
  image_tag_mutability = "IMMUTABLE"
  encryption_configuration {
    encryption_type = "AES256"
  }
  force_delete = true
  image_scanning_configuration {
    scan_on_push = false
  }
  tags = {
    owned_by = var.owner
    env      = var.env
  }
}

resource "aws_ecr_lifecycle_policy" "this" {
  repository = aws_ecr_repository.this.name
  policy = jsonencode({
    rules = [
      {
        rulePriority = 1,
        description  = "Keep last ${var.ecr_retention} images",
        selection = {
          tagStatus     = "tagged",
          tagPrefixList = ["v"],
          countType     = "imageCountMoreThan",
          countNumber   = var.ecr_retention
        },
        action = {
          type = "expire"
        }
      }
    ]
  })
}
