# Local Microservice System

This project demonstrates a local microservice system using:
- Python FastAPI
- C# ASP.NET Core
- Docker for containerization
- Jenkins for CI/CD
- Terraform for local infrastructure

## Setup Instructions
1. Build and run the services:
   ```bash
   docker-compose up --build
   ```

2. Access the services:
   - Python: [http://localhost:8000](http://localhost:8000)
   - C#: [http://localhost:8081](http://localhost:8081)

3. Configure Jenkins and run the pipeline.

4. Apply Terraform for additional infrastructure:
   ```bash
   terraform init
   terraform apply
   ```

# LocalMicroserviceSystem