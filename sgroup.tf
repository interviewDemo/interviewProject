provider "aws" { #cloud provider name
    region = "eu-west-2" #region closest to you or users accessing the service
}

resource "aws_instance" "ec2" { #resource type
    ami =  "ami-002068ed284fb165b" #ami package id
    instance_type = "t2.micro" #instance type (free teir)
    security_groups = [aws_security_group.sslwebtraffic]
    tags = {
        Name = "Techtest EC2" #tags applied to the server
    }
resource "aws_security_group" "webtraffic" 
    name = "allow HTTPS"

    ingress {
        from_port = 443
        to_port = 443
        protocol = "TCP"
        cidr_blocks = ["0.0.0.0/0"]# this would obviously change from all traffic to the office statc ip, or IP's of the users
    }
    egress {
        from_port = 443
        to_port = 443
        protocol = "TCP"
        cidr_blocks = ["0.0.0.0/0"]


    }
}