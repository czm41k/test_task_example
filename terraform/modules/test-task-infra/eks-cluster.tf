module "eks" {
  source  = "terraform-aws-modules/eks/aws"
  version = "18.26.6"

  cluster_name              = local.cluster_name
  cluster_version           = "1.22"
  vpc_id                    = module.vpc.vpc_id
  subnet_ids                = module.vpc.private_subnets
  create_aws_auth_configmap = false
  # aws_auth_users            = local.users_access_dict
  # aws_auth_users = [
  #   {
  #     userarn  = "arn:aws:iam::66666666666:user/user1"
  #     username = "user1"
  #     groups   = ["system:masters"]
  #   },
  #   {
  #     userarn  = "arn:aws:iam::66666666666:user/user2"
  #     username = "user2"
  #     groups   = ["system:masters"]
  #   },
  # ]
  eks_managed_node_group_defaults = {
    ami_type                              = "AL2_x86_64"
    attach_cluster_primary_security_group = false
    # Disabling and using externally provided security groups
    create_security_group = false
  }
  eks_managed_node_groups = {
    green = {
      name           = "eks-node-group"
      instance_types = ["t3.small"]
      min_size       = 0
      max_size       = 1
      desired_size   = 1
    }
  }
  tags = {
    environemt = var.env
    owned_by   = var.owner
  }
}
