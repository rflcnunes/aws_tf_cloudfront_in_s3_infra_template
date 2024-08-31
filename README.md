## AWS Terraform CloudFront in S3 Infrastructure Template
A Terraform template for creating AWS infrastructure with CloudFront integrated into S3. Use this repository as a foundation to set up secure and scalable content distribution for your web applications.

To configure the Terraform variables, you can create a `terraform.tfvars` file or use environment variables in a `*.hcl` file. Here are the variables you can set:

```hcl
app_local = "development"
aws_region = "us-east-1"
aws_profile = "my_aws_profile"
alternate_domain_name = "example.com"
domain_arn = "arn:aws:acm:us-east-1:123456789012:certificate/abcdefg-1234-5678-90ab-cdef12345678"
```

Make sure to replace the values with your desired configurations.

To deploy the infrastructure, make sure that the build files are located in the `artifacts/dist` folder. After running `npm run build` and generating the compiled files, place them in the `artifacts/dist` folder. This ensures that the infrastructure can retrieve and deploy the resources correctly.
Additionally, make sure that your `index.html` file is included in the `artifacts/dist` folder. This is the main entry point for your web application and will be served by CloudFront.

### Configuration Parameters
- `app_local`: Set the environment to run the application (production, sandbox, staging, development, anyone you want). The default value is `development`.
- `aws_region`: The AWS region where the resources will be created.
- `aws_profile`: The AWS profile to use for resource creation (credentials will be fetched from the `~/.aws/credentials` file).
- `alternate_domain_name`: An alternate domain name to access the application. This is used in CloudFront.
- `domain_arn`: The ARN of the SSL certificate to be used in CloudFront.

Feel free to customize these parameters to fit your specific requirements.