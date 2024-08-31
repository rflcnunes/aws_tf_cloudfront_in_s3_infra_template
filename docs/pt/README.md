## AWS Terraform CloudFront in S3 Infrastructure Template

## Languages
- [English](../../README.md)

Um modelo Terraform para criar infraestrutura AWS com CloudFront integrado ao S3. Use este repositório como base para configurar a distribuição segura e escalável de conteúdo para suas aplicações web.

### Variáveis do Terraform

Para configurar as variáveis do Terraform, você pode criar um arquivo `terraform.tfvars` ou usar variáveis de ambiente em um arquivo `*.hcl`. Aqui estão as variáveis que você pode definir:

```hcl
app_local = "development"
aws_region = "us-east-1"
aws_profile = "my_aws_profile"
alternate_domain_name = "example.com"
domain_arn = "arn:aws:acm:us-east-1:123456789012:certificate/abcdefg-1234-5678-90ab-cdef12345678"
```

Certifique-se de substituir os valores pelas suas configurações desejadas.

### Implantação da Infraestrutura

Para implantar a infraestrutura, siga estes passos:

1. Verifique se os arquivos de construção estão localizados na pasta `artifacts/dist`.
2. Execute `npm run build` para gerar os arquivos compilados.
3. Coloque os arquivos compilados na pasta `artifacts/dist`.
4. Isso garante que a infraestrutura possa recuperar e implantar os recursos corretamente.

Além disso, certifique-se de que seu arquivo `index.html` esteja incluído na pasta `artifacts/dist`. Este é o ponto de entrada principal para sua aplicação web e será servido pelo CloudFront.

### Parâmetros de Configuração

Os seguintes parâmetros de configuração podem ser personalizados:

- `app_local`: Defina o ambiente para executar a aplicação (produção, sandbox, staging, development, qualquer um que você desejar). O valor padrão é `development`.
- `aws_region`: A região da AWS onde os recursos serão criados.
- `aws_profile`: O perfil da AWS a ser usado para a criação de recursos (as credenciais serão obtidas do arquivo `~/.aws/credentials`).
- `alternate_domain_name`: Um nome de domínio alternativo para acessar a aplicação. Isso é usado no CloudFront.
- `domain_arn`: O ARN do certificado SSL a ser usado no CloudFront.

Sinta-se à vontade para personalizar esses parâmetros para atender aos seus requisitos específicos.