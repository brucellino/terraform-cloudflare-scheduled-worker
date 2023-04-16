terraform {
  backend "consul" {
    path = "terraform/modules/terraform-cloudflare-scheduled-worker/example/simple"
  }
  required_providers {
    cloudflare = {
      source  = "cloudflare/cloudflare"
      version = "4.3.0"
    }
    vault = {
      source  = "hashicorp/vault"
      version = "3.14.0"
    }
  }
}

variable "vault_cf_mount" {
  type        = string
  description = "Vault mount where the cloudflare secret is stored"
  default     = "cloudflare"
}

variable "vault_cf_secret" {
  type        = map(string)
  description = "Name of the cloudflare secret"
  default = {
    name = "terraform"
    key  = "api_token"
  }
}


data "vault_kv_secret_v2" "cloudflare" {
  mount = var.vault_cf_mount
  name  = var.vault_cf_secret.name
}
provider "cloudflare" {
  api_token = data.vault_kv_secret_v2.cloudflare.data["${var.vault_cf_secret.key}"]
}


module "example" {
  source = "../../"
}
