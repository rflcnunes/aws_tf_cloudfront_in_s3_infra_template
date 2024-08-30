variable "bucket_name" {
  type        = string
  description = "Name of the S3 bucket"
}

variable "app_local" {
  type        = string
  description = "The local environment"
}

variable "cloudfront_oai_arn" {
  type        = string
  description = "The ARN of the CloudFront OAI"
}
