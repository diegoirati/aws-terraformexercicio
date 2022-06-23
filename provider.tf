provider "aws" {
    region = "us-east-1"
    version = "~> 2.0"  
}

terraform {
  required_providers {
    postgresql = {
      source = "cyrilgdn/postgresql"
      version = "1.16.0"
    }
    docker = {
      source = "kreuzwerker/docker"
      version = "~> 2.13.0"
    }
  }
}
