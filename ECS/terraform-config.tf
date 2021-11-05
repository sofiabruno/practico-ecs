terraform {
    # Terraform Backend Block
  backend "s3" {
    bucket = "ecs-04-11"
    key    = "practico/terraform.tfstate"
    region = "us-east-1"
  }

  required_version = ">= 0.12"
}

# module "red" {
#     source="./modules/red/"
#     az1 = var.aws_az1 
#     az2 = var.aws_az2 
# }

# module "ecs" {
#     source="./modules/ecs/"
    
# }


