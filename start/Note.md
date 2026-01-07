# Terraform Basics - Quick Notes

## What is Terraform?
- Open-source **Infrastructure as Code (IaC)** tool created by HashiCorp
- Allows you to **define**, **provision**, and **manage** infrastructure using declarative configuration files
- Works with cloud providers (AWS, Azure, GCP), on-premises, SaaS, etc.
- Key principle: **Declarative** – you describe the desired end state, Terraform figures out how to achieve it

## Core Concepts
- **Configuration files** written in **HCL** (HashiCorp Configuration Language) or JSON
- Main file types:
  - `main.tf`       → Resources, data sources, outputs
  - `providers.tf`  → Provider configuration
  - `variables.tf`  → Input variables
  - `outputs.tf`    → Output values
  - `terraform.tfvars` → Variable values
- **Providers** → Plugins that interact with APIs (e.g., aws, google, azurerm)
- **Resources** → Infrastructure objects (VMs, networks, databases, etc.)
- **State** → Records what infrastructure Terraform manages

## Basic Workflow
```bash
terraform init      # Download providers, initialize backend
terraform fmt       # Format code
terraform validate  # Check syntax
terraform plan      # Preview changes
terraform apply     # Create/update infrastructure
terraform destroy   # Delete everything managed
```

---

