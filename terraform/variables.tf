variable "region" {
  description = "AWS region"
  type        = string
  default     = "us-west-1"
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
variable "access_list" {
  description = "List of ARNs to grant access to infra"
  type        = list(any)
  default     = []
}
