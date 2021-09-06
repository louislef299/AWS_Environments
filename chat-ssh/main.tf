module "ssh-chat" {
    source = "git::https://github.com/louislef299/terraform-aws-resources.git?ref=v1.0.0"

    vpc_cidr = "10.0.0.0/16"
    environment = "ssh-chat"

    public_subnets = 1
    private_subnets = 0
    subnet_cidrs = ["10.0.1.0/24"]
}

// this needs to be done after you decide implementation 