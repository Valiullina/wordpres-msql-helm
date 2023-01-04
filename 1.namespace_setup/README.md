## This folder sets up namespace
----
## Instructions

1. Set up backend
```
source ../scripts/setenv.sh
```

2. Configure tfenv if needed
```
tfenv install 1.1.1
tfenv use 1.1.1
```


3. Run terraform commands
```
terraform init
terraform apply -var-file ../0.account_setup/configurations.tfvars 
```