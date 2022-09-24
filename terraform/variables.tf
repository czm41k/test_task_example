variable "region" {
  description = "AWS region"
  type        = string
  default     = "us-west-1"
}
variable "force_destroy" {
  description = "Whether to force destroy s3 state bucket or not"
  default     = false
}
variable "env" {
  description = "Whether to force destroy s3 state bucket or not"
  default     = "dev"
}
variable "ecr_retention" {
  description = "How many version of images to keep"
  default     = 5
}
variable "owner" {
  type    = string
  default = "czm41k"
}
