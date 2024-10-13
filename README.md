# Azure login

az login --use-device-code

# Terraform Commands

terraform validate
terraform plan
terraform apply
terraform destroy
terraform plan -var-file="dev/main.tfvars" -state="dev/main.tfstate" -out="dev/main.tfplan"

terraform plan -var-file="hml/main.tfvars" -state="hml/main.tfstate" -out="hml/main.tfplan"

terraform apply -var-file="dev/main.tfvars" -state="dev/main.tfstate"

terraform apply -var-file="hml/main.tfvars" -state="hml/main.tfstate"

terraform destroy -var-file="dev/main.tfvars" -state="dev/main.tfstate"

terraform destroy -var-file="hml/main.tfvars" -state="hml/main.tfstate"

# Az Commands

az group list
