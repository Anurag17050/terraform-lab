terraform {
  required_providers {
    local = {
      source = "hashicorp/local"
      version = "~> 2.4"
    }
  }
}

provider "local" {}

variable "filename" {}
variable "message" {}

resource "local_file" "file" {
  filename = var.filename
  content  = var.message
}

output "file_name" {
  value = local_file.file.filename
}
