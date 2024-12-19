terraform {
  required_providers {
    docker = {
      source  = "kreuzwerker/docker"
      version = "~> 2.0"
    }
  }
  required_version = ">= 0.12"
}

provider "docker" {
  # Configuration options for the Docker provider can go here
}

# Build the Docker image from a Dockerfile
resource "docker_image" "my_image" {
  name = "my-image"
  build {
    context    = "${path.module}/../python_service" # Path to the Dockerfile context
    dockerfile = "Dockerfile"                         # Name of the Dockerfile
  }
}

# Define outputs
output "image_id" {
  value       = docker_image.my_image.id
  description = "The ID of the Docker image"
}

output "image_name" {
  value       = docker_image.my_image.name
  description = "The name of the Docker image"
}
