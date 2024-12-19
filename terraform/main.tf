provider "docker" {}

resource "docker_network" "local_network" {
  name = "local_network"
}

resource "docker_container" "python_service" {
  image = "python:3.10-slim"
  name  = "python_service"
  ports {
    internal = 8000
    external = 8000
  }
}

resource "docker_container" "csharp_service" {
  image = "mcr.microsoft.com/dotnet/aspnet:6.0"
  name  = "csharp_service"
  ports {
    internal = 8080
    external = 8080
  }
}
