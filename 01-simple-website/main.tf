terraform {
    cloud {
        organization = "my-workstation" # Replace with your Terraform Cloud organization name
        workspaces {    
            name = "dev"
        }
    }
    
    required_providers {
        aws = {
            source  = "hashicorp/aws"
            version = ">= 5.97.0"
        }
    }
    required_version = ">= 1.11.0"
}

provider "aws" {
    region = var.aws_region       
}

module "simple-website" {
    source = "git::https://github.com/shaktipawar/terraform-modules.git//01-website?ref=main"
    # We are passing the variables to the module.
    #aws_region = var.aws_region
    environment = var.environment
    product_name = var.product_name
    cidr_block = "10.0.0.0/16"
}



