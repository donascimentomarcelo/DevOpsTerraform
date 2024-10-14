# Azure login

az login --use-device-code

# Terraform Commands

terraform validate
terraform plan
terraform apply
terraform destroy

# cd modules/dev

terraform plan -var-file="main.tfvars" -state="main.tfstate" -out="main.tfplan"
terraform apply -var-file="main.tfvars" -state="main.tfstate"
terraform destroy -var-file="main.tfvars" -state="main.tfstate"

// terraform plan -var-file="modules/modules/hml/main.tfvars" -state="modules/hml/main.tfstate" -out="modules/hml/main.tfplan"

# cd modules/hml

terraform plan -var-file="main.tfvars" -state="main.tfstate" -out="main.tfplan"
terraform apply -var-file="main.tfvars" -state="main.tfstate"
terraform destroy -var-file="main.tfvars" -state="main.tfstate"

// terraform apply -var-file="modules/hml/main.tfvars" -state="modules/hml/main.tfstate"

# Az Commands

az group list

# terraform workspace

terraform workspace list

terraform workspace show

terraform workspace new dev

terraform workspace select dev

# terraform template

npm install -g yo@4.3.1 generator-generator

npm install -g generator-az-terra-module

### run

yo az-terra-module
