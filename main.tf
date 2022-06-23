terraform {
  backend "s3" {
    bucket = "shammai-terraform-backend"
    key    = "terraform.tfstate"
    region = "us-east-1"
  }
}

resource "null_resource" "cluster" {
  provisioner "local-exec" {
    command = "echo mentoria-iac"
    }
}