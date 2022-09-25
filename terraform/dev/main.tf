module "all-infra" {
  source                = "../modules/test-task-infra"
  owner                 = var.owner
  app_name              = var.app_name
  env                   = var.dev
  user_arns_access_list = var.user_arns_access_list
}

output "cluster_url" {
  description = "HTTPS endpoint of EKS cluster we created"
  value       = module.all-infra.cluster_endpoint
}
output "registry_url" {
  description = "HTTPS endpoint of EKS cluster we created"
  value       = module.all-infra.repository_url
}
