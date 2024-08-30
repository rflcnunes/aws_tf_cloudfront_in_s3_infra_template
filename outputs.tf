output "bucket_information" {
  value = {
    bucket_id   = module.s3.bucket_id
    bucket_domain = module.s3.bucket_domain
  }
}


output "spa_informations" {
  value = {
    spa_domain_name = module.cloudfront.spa_domain_name
  }
}