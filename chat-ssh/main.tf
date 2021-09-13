module "ssh-chat-network" {
  source = "git::https://github.com/louislef299/terraform-aws-resources.git"

  environment = "ssh-chat"
  vpc-enabled = 1
}

module "ssh-chat" {
  source = "git::https://github.com/louislef299/terraform-aws-resources.git"

  ec2-enabled = 1
  instance-regions = ["us-east-2"]
  vpc_id = module.ssh-chat-netowrk.vpc.aws_vpc.default.id
}
// this needs to be done after you decide implementation 