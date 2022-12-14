module "all-infra" {
  source                = "../modules/test-task-infra"
  owner                 = var.owner
  app_name              = var.app_name
  env                   = var.env
  user_arns_access_list = var.user_arns_access_list
  private_subnets       = ["10.0.1.0/24", "10.0.2.0/24"]
  public_subnets        = ["10.0.4.0/24", "10.0.5.0/24"]
}

output "cluster_url" {
  description = "HTTPS endpoint of EKS cluster we created"
  value       = module.all-infra.cluster_endpoint
}
output "registry_url" {
  description = "HTTPS endpoint of EKS cluster we created"
  value       = module.all-infra.repository_url
}
