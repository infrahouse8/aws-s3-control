locals {
  state_buckets = {
    "infrahouse-aws-s3-control" : {}
    "infrahouse-github-state": {}
  }
}

module "buckets" {
  source   = "./modules/state-bucket"
  for_each = local.state_buckets
  bucket   = each.key
}
