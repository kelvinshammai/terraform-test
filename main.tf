terraform {
  backend "s3" {
    bucket = "shammai-terraform-mentoria-iac"
    key    = "terraform.tfstate"
    region = "us-east-1"
  }

  required_version = ">= 1.2.0"
}

resource "null_resource" "cluster" {
  provisioner "local-exec" {
    command = "echo mentoria-iac"
  }
}