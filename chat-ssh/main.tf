module "ssh-chat" {
  source = "git::https://github.com/louislef299/terraform-aws-resources.git"

  vpc-enabled = 1
}

// this needs to be done after you decide implementation 