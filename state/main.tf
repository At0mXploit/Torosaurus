resource "local_file" "example" {
  filename = "example.txt"
  content  = "This is an example file created by Terraform."
}

resource "local_file" "example2" {
  filename = "example2.txt"
  content  = "This is an example file created by Terraform."
}

resource "local_sensitive_file" "tf_sensitive" {
  filename = "sensitive_example.txt"
  content  = "This is a sensitive example file created by Terraform."
}