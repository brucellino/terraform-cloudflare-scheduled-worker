# Main definition
data "cloudflare_accounts" "mine" {}

resource "cloudflare_workers_kv_namespace" "n" {
  account_id = data.cloudflare_accounts.mine.accounts[0].id
  title      = var.workers_kv_namespace
}

resource "cloudflare_worker_script" "this" {
  account_id = data.cloudflare_accounts.mine.accounts[0].id
  name       = var.script_name
  content    = templatefile("${path.module}/script.js", { namespace = cloudflare_workers_kv_namespace.n.title })
}

resource "cloudflare_worker_cron_trigger" "this" {
  account_id  = data.cloudflare_accounts.mine.accounts[0].id
  script_name = cloudflare_worker_script.this.name
  schedules   = var.schedules
}
