# Terraform Variables 

## Why Use Variables?
- Make configurations **reusable**, **customizable**, and **environment-specific**
- Avoid hard-coding values
- Enable safe secret handling

## All Variable Types Summary
| Type          | Declaration          | Access As       | Purpose                              |
|---------------|----------------------|-----------------|--------------------------------------|
| Input         | `variable "name" {}` | `var.name`      | External customizable values         |
| Local         | `locals {}`          | `local.name`    | Internal constants / computed values |
| Output        | `output "name" {}`   | `output.name`   | Expose values after apply            |

## Full Example - All Variables Together

### variables.tf
```hcl
variable "region" {
  type        = string
  description = "Deployment region"
  default     = "us-east-1"
}

variable "environment" {
  type        = string
  description = "Environment name (dev/staging/prod)"

  validation {
    condition     = contains(["dev", "staging", "prod"], var.environment)
    error_message = "Must be dev, staging, or prod."
  }
}

variable "instance_count" {
  type        = number
  default     = 2
}

variable "enable_monitoring" {
  type    = bool
  default = false
}

variable "tags" {
  type    = map(string)
  default = {
    Project   = "learning"
    ManagedBy = "terraform"
  }
}

variable "db_password" {
  type      = string
  sensitive = true
  description = "Database password (provide via tfvars or env)"
}

```

---
