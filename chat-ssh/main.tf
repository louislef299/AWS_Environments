module "ssh-chat-security-groups" {
  source = "git::https://github.com/louislef299/terraform-aws-security-groups.git"
}

module "ssh-chat-network" {
  source = "git::https://github.com/louislef299/terraform-aws-resources.git"

  environment = "ssh-chat"

  ssh-sg-id        = [module.ssh-chat-security-groups.ssh-sg-id]
  ec2-enabled      = 1
  instance-regions = ["us-east-2"]
}
// this needs to be done after you decide implementation 

## DON'T REMOVE ##
resource "aws_s3_bucket" "terraform_state" {
  bucket = "terraform-state"

  lifecycle {
    prevent_destroy = true
  }

  # enable versioning of the state file
  versioning {
    enabled = true
  }

  # enable server-side encryption by default
  server_side_encryption_configuration {
    rule {
      apply_server_side_encryption_by_default {
        sse_algorithm = "AES256"
      }
    }
  }
}

resource "aws_dynamodb_table" "terraform_locks" {
  name         = "terraform-locks"
  billing_mode = "PAY_PER_REQUEST"
  hash_key     = "LockID"

  attribute {
    name = "LockID"
    type = "S"
  }
}