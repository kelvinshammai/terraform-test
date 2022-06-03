terraform {
  backend "s3" {
    bucket = "shammai-tf-backend"
    key    = "global/s3/terraform.tfstate"
    region = "us-east-1"
  }
}

resource "null_resource" "cluster" {
  provisioner "local-exec" {
    command = "echo mentoria-iac"
    }
}