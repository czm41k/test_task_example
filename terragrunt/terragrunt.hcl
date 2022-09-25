remote_state {
    backend = "s3"
    generate {
        path = "_backend.tf"
        if_exists = "overwrite"
    }
    config = {
        bucket = "${get_env("OWNER", "")}-terragrunt-state"
        region = "us-west-1"
        key = "${path_relative_to_include()}/terraform.tfstate"
        encrypt = true
    }
}

terraform {
    extra_arguments "common_vars" {
        commands = get_terraform_commands_that_need_vars()
        required_var_files = [
            find_in_parent_folders("common.tfvars"),
        ]
    }
}
