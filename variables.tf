# variables.tf
# Use this file to declare the variables that the module will use.

# A dummy variable is provided to force a test validation
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
