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