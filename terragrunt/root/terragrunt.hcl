remote_state {
    backend = "s3"
    generate {
        path = "_backend_${var.env}.tf"
        if_exists = "overwrite"
        contents = <<EOF
variable "env" {}
EOF
    }
    config = {
        bucket = "czm41k-terragrunt-state"
        region = "us-west-1"
        key = "${path_relative_to_include()}/terraform.tfstate"
        encrypt = true
    }
}

generate "config" {
    path = "_config.tf"
    if_exists = "overwrite"

    contents = <<EOF

EOF
}

terraform {
    extra_arguments "common_vars" {
        commands = get_terraform_commands_that_need_vars()
        required_var_files = [
            find_in_parent_folders("common.tfvars"),
        ]
    }
}