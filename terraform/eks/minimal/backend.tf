terraform {
  backend "s3" {
     # These values will be provided during terraform init
     bucket         = "iniobongaltsch-eks-retail-store-state"
     key            = "eks/terraform.tfstate"
     region         = "us-east-1"
     dynamodb_table = "iniobong-terraform-locks"
     encrypt        = true
  }
}
