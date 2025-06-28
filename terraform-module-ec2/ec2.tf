module "ec2" {
  source = "../terraform-aws-ec2"
  sg_idd = "sg-0d5b9da6449c34cb3"
  instance_type = var.instance_type
  
  }

output "public_ip" {
  value = module.ec2.public_ip
}