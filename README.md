[![pre-commit](https://img.shields.io/badge/pre--commit-enabled-brightgreen?logo=pre-commit&logoColor=white)](https://github.com/pre-commit/pre-commit) [![pre-commit.ci status](https://results.pre-commit.ci/badge/github/brucellino/terraform-cloudflare-scheduled-worker/main.svg)](https://results.pre-commit.ci/latest/github/brucellino/terraform-cloudflare-scheduled-worker/main) [![semantic-release: conventional](https://img.shields.io/badge/semantic--release-conventional-e10079?logo=semantic-release)](https://github.com/semantic-release/semantic-release)

# Terraform Module for Cloudflare Scheduled Workers

This is a terraform module for scheduled workers on cloudflare.
## Examples

The `examples/` directory contains the example usage of this module.

<!-- BEGIN_TF_DOCS -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >1.2.0 |
| <a name="requirement_cloudflare"></a> [cloudflare](#requirement\_cloudflare) | ~> 4.0 |
| <a name="requirement_vault"></a> [vault](#requirement\_vault) | ~> 3.14 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_cloudflare"></a> [cloudflare](#provider\_cloudflare) | 4.18.0 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [cloudflare_worker_cron_trigger.this](https://registry.terraform.io/providers/cloudflare/cloudflare/latest/docs/resources/worker_cron_trigger) | resource |
| [cloudflare_worker_script.this](https://registry.terraform.io/providers/cloudflare/cloudflare/latest/docs/resources/worker_script) | resource |
| [cloudflare_workers_kv_namespace.n](https://registry.terraform.io/providers/cloudflare/cloudflare/latest/docs/resources/workers_kv_namespace) | resource |
| [cloudflare_accounts.mine](https://registry.terraform.io/providers/cloudflare/cloudflare/latest/docs/data-sources/accounts) | data source |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_schedules"></a> [schedules](#input\_schedules) | n/a | `set(string)` | <pre>[<br>  "* * * * *"<br>]</pre> | no |
| <a name="input_script_name"></a> [script\_name](#input\_script\_name) | Name of the script that will be added to Cloudflare workers | `string` | `"terraformed_script"` | no |
| <a name="input_workers_kv_namespace"></a> [workers\_kv\_namespace](#input\_workers\_kv\_namespace) | Name of the KV workers namespace to create for this function | `string` | `"terraform_namespace"` | no |

## Outputs

No outputs.
<!-- END_TF_DOCS -->
