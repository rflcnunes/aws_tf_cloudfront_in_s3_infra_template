variable "app_local" {
  type        = string
  description = "The local environment"
  default     = "development"
}

variable "aws_region" {
  type        = string
  description = "Region where the resources will be created"
}

variable "aws_profile" {
  type        = string
  description = "AWS profile to use"
}

variable "alternate_domain_name" {
  description = "Alternate domain names (CNAMEs) for the CloudFront distribution"
  type        = string
}

variable "domain_arn" {
  description = "The ARN of the ACM certificate"
  type        = string
}
