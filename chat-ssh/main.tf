module "ssh-chat-network" {
  source = "git::https://github.com/louislef299/terraform-aws-resources.git"

  environment = "ssh-chat"
  vpc-enabled = 1

  ec2-enabled      = 1
  instance-regions = ["us-east-2"]
}
// this needs to be done after you decide implementation 