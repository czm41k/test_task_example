module "ecr" {
  source = "terraform-aws-modules/ecr/aws"

  repository_name = "czm41k-ecr-${var.env}"
  repository_read_write_access_arns = ["arn:aws:iam::617686195573:user/evgenii-tselikov"] # TODO change to var
  repository_lifecycle_policy = jsonencode({
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

  tags = {
    owned_by   = "czm41k"
    environment = "${var.env}"
  }
}
