variable "message" {
  default = "Hello from Terraform"
}

resource "local_file" "hello" {
  filename = "test.txt"
  content  = "Hello"
}
output "file_path" {
  value = local_file.hello.filename
}
