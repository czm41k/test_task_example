include "root" {
  path = find_in_parent_folders()
}

terraform {
    source = "../../../terraform/modules/test-task-infra"
}

inputs = {
    owner="czm41k"
    app_name="python-webserver"
  //   user_arns_access_list = [
  //     "arn:aws:iam::723915311050:user/alex-berber",
  //     "arn:aws:iam::723915311050:user/stepan"
  // ]
}
