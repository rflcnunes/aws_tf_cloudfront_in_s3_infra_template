data "aws_s3_bucket" "this" {
  bucket = aws_s3_bucket.this.bucket
}

output "bucket_id" {
  value = data.aws_s3_bucket.this.id
}

output "bucket_domain" {
  value = aws_s3_bucket.this.bucket_domain_name
}

output "bucket_arn" {
  value = aws_s3_bucket.this.arn
}

output "bucket_name" {
  value = aws_s3_bucket.this.bucket
}