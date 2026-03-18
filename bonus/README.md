# Bonus – Dynamic Container Creation using Terraform

## Objective
Create multiple containers dynamically using Terraform.

## Steps Performed
1. Created reusable nginx module
2. Defined list of container configurations
3. Used for_each to create containers dynamically
4. Applied Terraform configuration
5. Verified containers in browser

## Commands Used
terraform init  
terraform apply  

## Output
- http://localhost:8081  
- http://localhost:8082  
- http://localhost:8083  
- http://localhost:8084  

## Key Concept
Used for_each to dynamically scale infrastructure.

## Outcome
Infrastructure becomes scalable and easy to manage.
