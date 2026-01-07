# Terraform Outputs 

## What are Outputs?
- Values that Terraform **exposes** after running `terraform apply`
- Used to:
  - Display important information to the user
  - Pass data from a child module to a root module
  - Provide values to other tools/scripts/CI-CD pipelines
  - Share resource IDs, URLs, IPs, names, etc.

## Declaring Outputs

### Usually in outputs.tf (or at the end of main.tf)
```hcl
output "instance_id" {
  value       = aws_instance.example.id
  description = "ID of the created EC2 instance"
}

output "public_ip" {
  value       = aws_instance.example.public_ip
  description = "Public IP address of the instance"
}

output "pet_name" {
  value       = random_pet.example.id
  description = "Generated random pet name"
}

output "instance_names" {
  value = [
    for instance in aws_instance.apps :
    instance.tags["Name"]
  ]
  description = "List of all instance names"
}

output "resource_summary" {
  value = {
    region      = var.region
    environment = var.environment
    pet_name    = random_pet.example.id
    created_at  = timestamp()
  }
  description = "Summary of deployment"
}

output "db_password" {
  value       = var.db_password
  sensitive   = true                  # Hides value in output/logs
  description = "Database password (sensitive)"
}
```

---
