# variables.tf
variable "workers_kv_namespace" {
  type        = string
  description = "Name of the KV workers namespace to create for this function"
  default     = "terraform_namespace"
}

variable "script_name" {
  type        = string
  description = "Name of the script that will be added to Cloudflare workers"
  default     = "terraformed_script"
}
