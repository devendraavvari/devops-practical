Docker File 
 # Use the official Node.js Docker image based on Alpine Linux version 14
FROM node:14-alpine
# Create a directory for the application code and set permissions
RUN mkdir -p /home/node/app/node_modules && chown -R node:node /home/node/app
# Set the working directory for subsequent instructions
WORKDIR /home/node/app
# Copy package.json and package-lock.json to the working directory
COPY package*.json ./
# Switch to a non-root user to run subsequent commands
USER node
# Install npm dependencies using 'npm ci' for faster and deterministic builds
RUN npm ci
# Copy the rest of the application code to the working directory
COPY . .
# Expose port 3000 for communication with the outside world
EXPOSE 3000
# Define the command to start the application
CMD ["npm", "start"]

And also created Docker compose for the local test
 Docker commands
 Docker build –t nodesjsapp . 
Docker images screenshot 
Docker tag devendraazure/nodejsapp:v1.1.0 nodesjsapp
 Pushing image to dockerhub 
Docker push devendraazure/nodejsapp:v1.1.0 
Kubernetes yaml files 
 Please refer the repo K8s with kustimazation
 1) frontend for nodeJs application 
2) mongo DB folder for Mongo DB Database
 Yaml deployment command 
Kubectl apply –k  .
Terraform
 Terraform script Referred the terraform official website for EKS cluster creation and deploy the terraform script on AWS to provision cluster quickly. 
Please refer the folder. Terraform script created below resources 
1)#Create a custom VPC
 2)#Create Subnets 
3)#Creating Internet Gateway IGW 
4)#Creating Route Table 
5)#Adding security group 
6)#Create a Route in the Route Table with a route to IGW
 7)#Associate Subnets with the Route Table 
8)#Creating IAM role for EKS 
9)#Creating EKS Cluster

Please refere solution.docx for screenshot
