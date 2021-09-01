## Terraform Project to Launch EKS , VPC on AWS

1) Install Terraform
2) Configure aws AWS Access and Secret Key
Export the AWS credentials whih will be used to authenticate with Amazon AWS:

    export AWS_ACCESS_KEY_ID="XXX"
    export AWS_SECRET_ACCESS_KEY="XXX"

# Update variable file terraform.tfvars with below values
        cluster-name = "test-eks"
        cluster-version = "1.18"
        

  terraform init
  terraform plan
  terraform apply -var-file=terraform.tfvars
