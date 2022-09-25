include "root" {
  path = find_in_parent_folders()
}

terraform {
    source = "../../../terraform/modules/test-task-infra"
}

inputs = {
    owner="czm41k"
    app_name="python-webserver"
}
