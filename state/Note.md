# Terraform State 

## What is Terraform State?
- Terraform stores **state** in `terraform.tfstate` (JSON file)
- State = **mapping** between your configuration and real-world resources
- Terraform uses state to:
  - Know what resources it manages
  - Track resource attributes and dependencies
  - Plan future changes accurately

## Why State is Important
- Without state → Terraform thinks nothing exists → recreates everything
- With state → Can do incremental changes, updates, and safe destroys
- Enables collaboration (when stored remotely)

## Local vs Remote State

| Feature              | Local State                     | Remote State                          |
|----------------------|---------------------------------|---------------------------------------|
| Storage              | Local disk (`terraform.tfstate`)| S3, GCS, Terraform Cloud, etc.        |
| Collaboration        | Single user only                | Team-friendly                         |
| State Locking        | No                              | Yes (prevents concurrent applies)     |
| Backup/Versioning    | Manual                          | Automatic (with proper backend)        |
| Security             | Risk of loss/corruption         | Encryption, access control            |
| Best for             | Learning, solo experiments      | Production, teams                     |

## Common State Commands
```bash
terraform init          # Initialize backend & providers
terraform plan          # Refresh state + show changes
terraform apply         # Apply changes + update state
terraform show          # View current state (human-readable)
terraform state list    # List resources in state
terraform state mv      # Rename/move resource in state
terraform import        # Bring existing resource into state
```
## State Drift

- Occurs when real infrastructure changes outside Terraform
- Examples:
  - Someone manually edits a resource in cloud console
  - Another tool modifies the resource
- Terraform detects drift during `terraform plan`
- Fix by:
  - Updating your .tf code to match reality
  - Or applying to revert changes
  - Or importing the resource

---
