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
| <a name="provider_cloudflare"></a> [cloudflare](#provider\_cloudflare) | 4.3.0 |
| <a name="provider_vault"></a> [vault](#provider\_vault) | 3.14.0 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [cloudflare_accounts.mine](https://registry.terraform.io/providers/cloudflare/cloudflare/latest/docs/data-sources/accounts) | data source |
| [vault_kv_secret_v2.cloudflare](https://registry.terraform.io/providers/hashicorp/vault/latest/docs/data-sources/kv_secret_v2) | data source |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_vault_cf_mount"></a> [vault\_cf\_mount](#input\_vault\_cf\_mount) | Vault mount where the cloudflare secret is stored | `string` | `"cloudflare"` | no |
| <a name="input_vault_cf_secret"></a> [vault\_cf\_secret](#input\_vault\_cf\_secret) | Name of the cloudflare secret | `map(string)` | <pre>{<br>  "key": "api_token",<br>  "name": "terraform"<br>}</pre> | no |

## Outputs

No outputs.
<!-- END_TF_DOCS -->
