# Tetris Game - React App

This project is a Tetris game built using [React](https://reactjs.org/). It was bootstrapped with [Create React App](https://github.com/facebook/create-react-app).

## Project Overview

This Tetris game is designed to be deployed using a CI/CD pipeline with tools such as Jenkins, Docker, and Azure Kubernetes Service (AKS). The repository contains the code for the frontend game logic and setup scripts for deployment.

## Available Scripts

In the project directory, you can run the following commands:

### `npm start`

Runs the app in development mode.  
Open [http://localhost:3000](http://localhost:3000) to view it in your browser.

- The page will automatically reload if you make edits.
- You may also see lint errors in the console.

### `npm test`

Launches the test runner in interactive watch mode.  
This is useful for running tests during development and ensuring code stability.

### `npm run build`

Builds the app for production in the `build` folder.  
It correctly bundles React in production mode and optimizes the build for the best performance.

- The build is minified, and filenames include hashes.
- The app is now ready to be deployed.

### `npm run eject`

**Note: This is a one-way operation. Once you `eject`, you can't undo it.**

If you need full control over the configuration (Webpack, Babel, ESLint, etc.), you can eject from Create React App by running this command. This is usually not necessary unless you require advanced customization.

## Deployment

This project is configured to be deployed using a CI/CD pipeline with Jenkins, Docker, and AKS. Here's a brief overview of how to deploy the app:

1. **Docker Build**: The React app is built and containerized using Docker.
2. **CI/CD Pipeline**: Jenkins automates the testing, building, and deployment process.
3. **Kubernetes Deployment**: The app is deployed to an Azure Kubernetes Service (AKS) cluster.
4. **Public Access**: The app is made accessible via a LoadBalancer service in Kubernetes.

For detailed deployment instructions, refer to the deployment scripts in the `deployment/` directory.

## Continuous Integration & Continuous Deployment (CI/CD)

This project uses Jenkins and Docker to automate the following:

- **Build the app** using `npm run build`.
- **Run tests** to ensure code quality.
- **Containerize the app** into a Docker image.
- **Deploy the app** to AKS via Kubernetes and ArgoCD.

### Learn More

To learn more about Create React App, check out the [Create React App documentation](https://facebook.github.io/create-react-app/docs/getting-started).

To learn more about React, check out the [React documentation](https://reactjs.org/).

## Advanced Features

- **Code Splitting**: The app can be optimized for performance with code splitting.
- **Progressive Web App (PWA)**: Create React App provides tools to make the app a PWA.
- **Analyzing Bundle Size**: Use tools to analyze the size of the final build.
- **Custom Configuration**: You can customize the app by ejecting from Create React App, though this is not generally recommended.

## Troubleshooting

If you encounter any issues with building the app, visit the [Create React App troubleshooting guide](https://facebook.github.io/create-react-app/docs/troubleshooting).

