resource "aws_s3_bucket" "terraform_state" {

  bucket = "terraform-learning"

  versioning {
    enabled = true
  }

  lifecycle {
    prevent_destroy = true
  }

  server_side_encryption_configuration {
    rule {
      apply_server_side_encryption_by_default {
        sse_algorithm     = "AES256"
      }
    }
  }  
}

provider "aws" {
  region = "eu-west-3"
}

output "s3_bucket_arn" {
  value = "${aws_s3_bucket.terraform_state.arn}"
}