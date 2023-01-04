### This repo is used to demo vault


# Usage: 
#### 0. Run 
```
export VAULT_TOKEN="YOUR_TOKEN_HERE"
```

#### 1. Configure backend
```
source ../scripts/setenv.sh
```

#### 2. Initialize terraform 
```
terraform  init 
```
#### 3. Create 
```
terraform apply    -var-file ../0.account_setup/configurations.tfvars 
```



