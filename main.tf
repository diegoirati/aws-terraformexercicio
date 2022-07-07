resource "aws_instance" "ambiente0maquina" {
    count = 2
    ami = "ami-052efd3df9dad4825"
    instance_type = "t2.micro"
    key_name = "terraform-aws"
    tags = {
      Name = "ambiente0maquina${count.index}"
    }
}

resource "aws_instance" "ambiente0maquina2" {
    ami = "ami-052efd3df9dad4825"
    instance_type = "t2.micro"
    key_name = "terraform-aws"
    tags = {
      Name = "ambiente0maquina2"
    }
    depends_on = [
        aws_db_instance.postgresql
    ]
}

resource "aws_instance" "ambiente1maquina0" {
    ami = "ami-052efd3df9dad4825"
    instance_type = "t2.micro"
    key_name = "terraform-aws"
    tags = {
      Name = "ambiente1maquina0"
    }
}

resource "aws_instance" "ambiente1maquina1" {
    ami = "ami-052efd3df9dad4825"
    instance_type = "t2.micro"
    key_name = "terraform-aws"
    tags = {
      Name = "ambiente1maquina1"
    }
    depends_on = [
        aws_db_instance.mysql
    ]
}

resource "aws_instance" "ambiente2maquina0" {
    ami = "ami-052efd3df9dad4825"
    instance_type = "t2.micro"
    key_name = "terraform-aws"
    tags = {
      Name = "ambiente2maquina0"
    }
    depends_on = [
        docker_container.openjdk
    ]
}

resource "aws_db_instance" "postgresql" {
  identifier             = "postgresql"
  instance_class         = "db.t3.micro"
  allocated_storage      = 5
  engine                 = "postgres"
  username               = "juan"
  password               = "${var.db_password["dbpass1"]}"
  publicly_accessible    = true
  skip_final_snapshot    = true
}

resource "aws_db_instance" "mysql" {
  identifier             = "mysql"
  instance_class         = "db.t3.micro"
  allocated_storage      = 5
  engine                 = "mysql"
  username               = "diego"
  password               = "${var.db_password["dbpass1"]}"
  publicly_accessible    = true
  skip_final_snapshot    = true
}

resource "docker_image" "openjdk" {
  name         = "openjdk:latest"
  keep_locally = false
}

resource "docker_container" "openjdk" {
  image = docker_image.openjdk.latest
  name  = "tutorial"
  ports {
    internal = 80
    external = 8000
  }
}
