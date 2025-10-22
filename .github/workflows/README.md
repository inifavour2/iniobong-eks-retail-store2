# CI/CD Workflows

## Current Workflows

### terraform-validation.yml
- **Purpose**: Validates Terraform configuration and project structure
- **Triggers**: Push to main/develop, Pull Requests
- **Jobs**:
  - Terraform format check
  - Terraform initialization (validation mode)
  - Terraform validation
  - Documentation verification
  - Project structure check

## Note on E2E Tests

End-to-end tests that require live AWS infrastructure are not run in CI/CD for this educational project for the following reasons:

1. **Security**: AWS credentials should not be stored in GitHub for educational projects
2. **Cost**: Running full infrastructure in CI/CD for every commit is expensive
3. **Scope**: This project focuses on IaC and deployment skills, not automated testing infrastructure

The infrastructure has been deployed and tested manually, as documented in the deployment guide.

## Manual Deployment

Infrastructure is deployed using:
```bash
cd terraform/eks/minimal
terraform init
terraform apply
```

For full deployment instructions, see the [Deployment Guide](../../docs/DEPLOYMENT_GUIDE.md).
