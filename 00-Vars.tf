variable "vpcs" {
    type = map(map(string))
    default = {
        VPC-A-Prod = {
            cidr = "10.80.0.0/16"
            service = "Production"
        }
        VPC-B-Dev = {
            cidr = "10.81.0.0/16"
            service = "Development"
        }
        VPC-C-Test = {
            cidr = "10.82.0.0/16"
            service = "Testing"
        }
    }
}


variable "subnets" {
    type = map(map(string))
    default = {
        VPC-A-Prod-pub = {
            cidr = "10.80.1.0/24"
            vpc = "VPC-A-Prod"
            az = "us-east-1a"
            service = "production"
        }
        VPC-A-Prod-priv = {
            cidr = "10.80.11.0/24"
            vpc = "VPC-A-Prod"
            az = "us-east-1a"
            service = "prod"
        }
        VPC-B-Dev-priv = {
            cidr = "10.81.12.0/24"
            vpc = "VPC-B-Dev"
            az = "us-east-1b"
            service = "development"
        }
        VPC-C-Test-priv = {
            cidr = "10.82.13.0/24"
            vpc = "VPC-C-Test"
            az = "us-east-1c"
            service = "testing"
        }
    }
}

variable "prod-igw" {
    type = string
    default = "VPC-A-Prod"
}