<!-- BEGIN_TF_DOCS -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_aws"></a> [aws](#requirement\_aws) | ~> 2.0 |
| <a name="requirement_docker"></a> [docker](#requirement\_docker) | ~> 2.13.0 |
| <a name="requirement_postgresql"></a> [postgresql](#requirement\_postgresql) | 1.16.0 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_aws"></a> [aws](#provider\_aws) | 2.70.1 |
| <a name="provider_docker"></a> [docker](#provider\_docker) | 2.13.0 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [aws_db_instance.mysql](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/db_instance) | resource |
| [aws_db_instance.postgresql](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/db_instance) | resource |
| [aws_instance.ambiente0maquina](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/instance) | resource |
| [aws_instance.ambiente0maquina2](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/instance) | resource |
| [aws_instance.ambiente1maquina0](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/instance) | resource |
| [aws_instance.ambiente1maquina1](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/instance) | resource |
| [aws_instance.ambiente2maquina0](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/instance) | resource |
| [docker_container.openjdk](https://registry.terraform.io/providers/kreuzwerker/docker/latest/docs/resources/container) | resource |
| [docker_image.openjdk](https://registry.terraform.io/providers/kreuzwerker/docker/latest/docs/resources/image) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_db_password"></a> [db\_password](#input\_db\_password) | n/a | `map(string)` | <pre>{<br>  "dbpass1": "te123456"<br>}</pre> | no |

## Outputs

No outputs.
<!-- END_TF_DOCS -->