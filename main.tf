locals {
  common_tags = {
    "created_by" : "infrahouse8/aws-s3-control" # GitHub repository that created a resource
  }

  state_buckets = {
    "infrahouse-aws-s3-control" : {}
    "infrahouse-github-state" : {}
  }
}

module "buckets" {
  source   = "./modules/state-bucket"
  for_each = local.state_buckets
  bucket   = each.key
  tags = merge(local.common_tags)
}
