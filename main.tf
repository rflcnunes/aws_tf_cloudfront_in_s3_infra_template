module "s3" {
  source = "./modules/s3"

  bucket_name        = "--${var.app_local}"
  app_local          = var.app_local
  cloudfront_oai_arn = module.cloudfront.cloudfront_oai_arn
}

module "cloudfront" {
  source                = "./modules/cloudfront"
  bucket_name           = module.s3.bucket_name
  bucket_arn            = module.s3.bucket_arn
  app_local             = var.app_local
  alternate_domain_name = var.alternate_domain_name
  acm_certificate_arn   = var.domain_arn
}
