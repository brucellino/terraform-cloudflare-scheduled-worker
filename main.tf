# Main definition
provider "vault" {}

data "vault_kv_secret_v2" "cloudflare" {
  mount = var.vault_cf_mount
  name  = var.vault_cf_secret.name
}
provider "cloudflare" {
  api_token = data.vault_kv_secret_v2.cloudflare.data["${var.vault_cf_secret.key}"]
}

data "cloudflare_accounts" "mine" {}
