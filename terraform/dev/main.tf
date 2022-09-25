module "all-infra" {
  source   = "../modules/test-task-infra"
  owner    = "czm41k"
  app_name = "python-webserver"
  env      = "dev"
  user_arns_access_list = [
    "arn:aws:iam::723915311050:user/alex-berber",
    "arn:aws:iam::723915311050:user/stepan"
  ]
}

output "cluster_url" {
  description = "HTTPS endpoint of EKS cluster we created"
  value       = module.all-infra.cluster_endpoint
}
output "registry_url" {
  description = "HTTPS endpoint of EKS cluster we created"
  value       = module.all-infra.repository_url
}
