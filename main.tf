provider "aws" { #cloud provider name
    region = "eu-west-2" #region closest to you or users accessing the service
}

resource "aws_instance" "ec2" { #resource type
    ami =  "ami-002068ed284fb165b" #ami package id
    instance_type = "t2.micro" #instance type (free teir)
    tags = {
        Name = "Techtest EC2" #tags applied to the server
    }
}
    

