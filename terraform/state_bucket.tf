resource "aws_s3_bucket" "terraform_state" {
  bucket        = "terraform-${var.env}"
  force_destroy = var.s3_force_destroy
  versioning {
    enabled = true
  }
  server_side_encryption_configuration {
    rule {
      apply_server_side_encryption_by_default {
        sse_algorithm = "AES256"
      }
    }
  }
  lifecycle {
    prevent_destroy = false
  }
}
