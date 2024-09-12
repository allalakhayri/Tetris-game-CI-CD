# Tetris Game - React App with CI/CD on Azure

This project is a Tetris game built using [React](https://reactjs.org/) and deployed using a CI/CD pipeline with Azure, Docker, Kubernetes, and Terraform.

## Prerequisites

Before starting, ensure you have the following installed:

- [Node.js](https://nodejs.org/) and npm
- [Terraform](https://www.terraform.io/)
- [Azure CLI](https://docs.microsoft.com/en-us/cli/azure/install-azure-cli)
- [Docker](https://www.docker.com/)
- [Kubernetes CLI (kubectl)](https://kubernetes.io/docs/tasks/tools/)
- [Jenkins](https://www.jenkins.io/) (optional for CI/CD automation)

## Step-by-Step Setup and Deployment

### 1. Clone the Repository

```
git clone https://github.com/your-repo/tetris-game.git
cd tetris-game
```
###  2. Install Node.js Dependencies

In the project directory, run:
```
npm install
```
###  3. Run the App Locally

Start the development server:

```
npm start
```
The app will be running at http://localhost:3000.

### 4. Build the Docker Image

Create a Docker image for the React app:

```
docker build -t tetris-game:latest .
```
### 5. Set Up Azure Resources

#### 5.1. Log in to Azure

Log in to your Azure account using the Azure CLI:
```
az login
```
#### 5.2. Create a Resource Group

```
az group create --name TetrisResourceGroup --location eastus
```
#### 5.3. Create an Azure Kubernetes Service (AKS) Cluster

```
az aks create --resource-group TetrisResourceGroup --name TetrisAKSCluster --node-count 1 --enable-addons monitoring --generate-ssh-keys
```
#### 5.4. Connect to AKS

Configure kubectl to connect to the AKS cluster:

```
az aks get-credentials --resource-group TetrisResourceGroup --name TetrisAKSCluster
```

### 6. Use Terraform to Provision Infrastructure
#### 6.1. Initialize Terraform
Go to the deployment/ directory and initialize Terraform:
```
cd deployment
terraform init
```

#### 6.2. Apply Terraform Configuration
Run Terraform to provision the Azure infrastructure:
```
terraform apply
```

### 7. Deploy the App to Kubernetes

#### 7.1. Apply Kubernetes Deployment

Use kubectl to apply the Kubernetes configuration for deploying the Tetris game:
```
kubectl apply -f kubernetes-deployment.yaml
```

#### 7.2. Check Kubernetes Pods and Services

Verify the pods and services are running:
```
kubectl get pods
```

### 8. Access the App
Once the Kubernetes service is running, access the app using the external IP of the LoadBalancer:
```
kubectl get svc
```

Navigate to the external IP in your browser to view the deployed Tetris game.

For Terraform issues, re-run the following:
```
terraform apply
```

This guide provides a step-by-step approach to configuring and deploying the Tetris game using CI/CD tools.



