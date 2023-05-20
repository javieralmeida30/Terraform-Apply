# Terraform-Apply
Terraform that provisions a Linux2 EC2 Instance and installs Nginx.



Install Chocolatey.

Install Terraform:
choco install terraform

Creating an environment (env) with Terraform:

Open a command prompt.
Navigate to the directory where you want to create the environment.
Execute the following command to initialize a new Terraform project:
csharp
terraform init

Create and configure the Terraform configuration files according to your needs. For example, you can create a file called main.tf and add the configuration for the resources you want to create in your environment.
Execute the following command to verify and plan the changes that will be made in your environment:
terraform plan

Review the output of the "plan" command and verify that the proposed changes are as expected.
If you are satisfied with the proposed changes, execute the following command to apply the changes to your environment:
terraform apply

Confirm the execution by typing "yes" when prompted.
Wait for Terraform to apply the changes to your environment. Once completed, 
your environment will be configured according to the Terraform definition.
