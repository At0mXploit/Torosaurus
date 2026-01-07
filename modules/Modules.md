# Terraform Modules 

## What are Modules?
- Modules are **containers** for multiple resources that are used together
- Allow you to **reuse** and **organize** Terraform configurations
- Think of them as "functions" or "components" in infrastructure code
- Every Terraform configuration is a module (even the root one)

## Types of Modules
| Type              | Location                          | Use Case                              |
|-------------------|-----------------------------------|---------------------------------------|
| **Root Module**   | Your main directory               | Calls child modules and ties everything together |
| **Child Module**  | Reusable subdirectory or registry | Packaged, reusable infrastructure pieces |
| **Published**     | Terraform Registry / Git / S3 etc. | Share across teams/projects           |

---
