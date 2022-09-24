variable "region" {
  description = "AWS region"
  type        = string
  default     = "us-west-1"
}
variable "s3_force_destroy" {
  description = "Whether to force destroy s3 state bucket or not"
  default     = false
}
variable "env" {
  description = "Whether to force destroy s3 state bucket or not"
  default     = "dev"
}
variable "ecr_retention" {
  description="How many version of images to keep"
  default = 5
}
