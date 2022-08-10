#  module "project_ec2" {
#    source             = "./modules/ec2"
#    name               = local.name
#    account            = data.aws_caller_identity.current.account_id
#    aws_ami            = data.aws_ami.amazon_linux_2.id
#    private_subnet_ids = module.vpc.private_subnet_ids
#    vpc_id             = module.vpc.vpc_id
#  }
#us-east-1: ami-0252248182aeb2136
#us-east-2: ami-05d388235e3b33205

  module "project_ec2" {
   source             = "./modules/ec2"
   name               = local.name
   account            = data.aws_caller_identity.current.account_id
   aws_ami            = "ami-0ef8c7099ef697f3e"
   private_subnet_ids = module.vpc.private_subnet_ids
   vpc_id             = module.vpc.vpc_id
 }