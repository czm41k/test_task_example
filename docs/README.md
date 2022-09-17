### Documentation

All components described at:
- [Overall repo readme](/README.md)
- [Application readme](/app-code/README.md)
- [Helm readme](/helm-charts/README.md)
- [Terraform readme](/terraform/README.md)

### Pipeline structure

### Local CI settings

It's considered to use `pre-commit` before checking your work to VCS.
To deal with it run inside repo dir
```sh
pre-commit install
```
In case some checks fails you could whether check needed hook locally by running
```sh
pre-commit run  -v --all-files  --hook-stage=push <check_id_from_config>
```
OR [exclude it from running while pushing](https://pre-commit.com/#temporarily-disabling-hooks)

> All further usage details could be found at [official documentation](https://pre-commit.com/#usage)