data "aws_caller_identity" "current" {}

 data "aws_ami" "amazon_linux_2" {
   most_recent = true
   owners      = ["amazon"]
  id           = "ami-05d388235e3b33205"

   filter {
     name   = "owner-alias"
     values = ["amazon"]
   }

   filter {
     name   = "name"
     values = ["amzn2-ami-hvm*"]
   }
 }