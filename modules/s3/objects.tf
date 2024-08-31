resource "aws_s3_object" "vue_app_files" {
  for_each = fileset("artifacts/dist", "**/*")

  bucket = aws_s3_bucket.this.id
  key    = each.value
  source = "artifacts/dist/${each.value}"
  acl    = "private"

  content_type = lookup(
    {
      "html" = "text/html",
      "css"  = "text/css",
      "js"   = "application/javascript",
      "png"  = "image/png",
      "jpg"  = "image/jpeg",
      "jpeg" = "image/jpeg",
      "svg"  = "image/svg+xml",
      "ico"  = "image/x-icon"
    },
    split(".", each.value)[length(split(".", each.value)) - 1],
    "application/octet-stream"
  )

  etag = filemd5("artifacts/dist/${each.value}")

  depends_on = [ aws_s3_bucket.this ]
}
