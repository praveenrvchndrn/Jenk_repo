terraform {
  required_providers {
    local = {
      source  = "hashicorp/local"
      version = "~> 2.1"
    }
  }
}

resource "local_file" "devops_practice" {
  content  = "Terraform module executed successfully via Jenkins CI/CD!"
  filename = "${path.module}/tf_output.txt"
}
