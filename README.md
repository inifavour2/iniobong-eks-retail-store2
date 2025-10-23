# InnovateMart EKS Retail Store Deployment

[![Terraform](https://img.shields.io/badge/Terraform-v1.6.0-623CE4?logo=terraform)](https://www.terraform.io/)
[![AWS EKS](https://img.shields.io/badge/AWS-EKS-FF9900?logo=amazon-aws)](https://aws.amazon.com/eks/)
[![Kubernetes](https://img.shields.io/badge/Kubernetes-v1.28-326CE5?logo=kubernetes)](https://kubernetes.io/)

Production-ready deployment of AWS Retail Store Sample Application on Amazon EKS.

## 🚀 Project Overview

This project demonstrates the deployment of a microservices-based retail application on Amazon EKS using Infrastructure as Code (Terraform) and GitOps principles.

**Author**: Iniobong Favour Pender-Atanaruno 
**Date**: October 2025  
**Institution**: AltSchool Africa - Cloud Engineering Program

## 📋 Architecture

- **Platform**: Amazon EKS (Kubernetes 1.28)
- **Infrastructure**: Terraform
- **Deployment**: Helm Charts
- **Load Balancing**: AWS Application Load Balancer
- **CI/CD**: GitHub Actions

## 🛠️ Quick Start

### Prerequisites
- AWS CLI v2.x
- Terraform v1.6.0+
- kubectl v1.28+
- Helm v3.x
- AWS Account with administrative access

### Deployment Steps

1. **Clone the Repository**
```bash
git clone https://github.com/inifavour2/iniobong-eks-retail-store2.git
cd iniobong-eks-retail-store2
```

2. **Deploy Infrastructure**
```bash
cd terraform/eks/minimal
terraform init
terraform apply
```

3. **Configure kubectl**
```bash
aws eks update-kubeconfig --name retail-store --region us-east-1
```

4. **Deploy Application**
```bash
helm upgrade --install ui ~/iniobong-eks-retail-store2/src/ui/chart
helm upgrade --install catalog ~/iniobong-eks-retail-store2/src/catalog/chart
helm upgrade --install cart ~/iniobong-eks-retail-store2/src/cart/chart
helm upgrade --install orders ~/iniobong-eks-retail-store2/src/orders/chart
helm upgrade --install checkout ~/iniobong-eks-retail-store2/src/checkout/chart
```

5. **Expose Application**
```bash
kubectl apply -f kubernetes/ingress.yaml
kubectl get ingress -n default
```

## 📁 Project Structure
```
iniobong-eks-retail-store2/
├── terraform/eks/minimal/     # Infrastructure as Code
├── src/                       # Application Helm charts
├── kubernetes/                # Kubernetes manifests
├── .github/workflows/         # CI/CD pipelines
└── docs/                      # Documentation
```

## 🔐 Features Implemented

### Core Requirements ✅
- [x] Infrastructure as Code (Terraform)
- [x] EKS Cluster with VPC
- [x] IAM roles and policies
- [x] Application deployment (Helm)
- [x] Developer read-only access
- [x] CI/CD automation (GitHub Actions)

### Bonus Features ✅
- [x] AWS Load Balancer Controller
- [x] Ingress with Application Load Balancer
- [x] Public application access

## 💰 Cost Estimation

**~$275/month** (us-east-1)
- EKS Cluster: $72
- EC2 Nodes (3x t3.medium): $90
- NAT Gateways: $65
- ALB: $22
- Other: $26

## 📚 Documentation

- [Deployment Guide](./docs/DEPLOYMENT_GUIDE.md)
- [Developer Access](./DEVELOPER_ACCESS_VERIFIED.md)
- [Architecture Overview](./docs/DEPLOYMENT_GUIDE.md#architecture-overview)

## 🧹 Cleanup
```bash
cd terraform/eks/minimal
terraform destroy
```

## 📧 Contact

**Name**: Iniobong Favour Pender-Atanaruno
**Email**: ini.favour@gmail.com  
**Project**: AltSchool Cloud Engineering - Month 2 Assessment

## 📄 License

This project was created for educational purposes as part of AltSchool Africa's Cloud Engineering program.

## 🙏 Acknowledgments

- AltSchool Africa Cloud Engineering Program
- AWS Retail Store Sample App
- AWS EKS Documentation

## 🔄 CI/CD Pipeline

### Automated Validation
The GitHub Actions workflow automatically validates:
- ✅ Terraform configuration syntax
- ✅ Terraform formatting
- ✅ Documentation completeness
- ✅ Project structure

### Manual Deployment
For this educational project, infrastructure is deployed manually:
```bash
# Deploy infrastructure
cd terraform/eks/minimal
terraform init
terraform apply

# Deploy application
helm upgrade --install ui ./src/ui/chart
# ... additional services
```

**Why Manual?**
- Educational focus on understanding deployment process
- Avoids AWS costs from automated deployments
- Security best practice for learning projects
- Aligns with assessment requirements

See [Deployment Guide](./docs/DEPLOYMENT_GUIDE.md) for complete instructions.
