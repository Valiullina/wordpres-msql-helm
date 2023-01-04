## Instructions

1. Set up backend
```
source ../scripts/setenv.sh
```

2. Run terraform commands
```
terraform init
terraform apply -var-file ../0.account_setup/configurations.tfvars 
```