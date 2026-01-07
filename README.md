# Torosaurus

Cloud Infrastructure using AWS and Terraform to deploy a Node.js application with a MySQL database leveraging AWS services like EC2, S3, RDS, and VPC.

## Architecture Flow

1. **GitHub** hosts the **Node.js** application's code.
2. **Terraform** provisions the **AWS** infrastructure, including:
   - **EC2 instance** to run the Node.js application.
   - **RDS MySQL database** for data storage.
   - **S3 bucket** for file storage.
3. The **Node.js** application connects to the **RDS** database over **port 3306**, restricted by security groups for secure communication.
4. The application interacts with **Amazon S3** for uploading or retrieving files.
5. The whole setup runs within the default **VPC**, ensuring isolation and secure access to resources.

## Config:

Clone the repo.

1. Add the Node Js the directory then:

    ```bash
    cd terraform
    ```
2. Initialize the terraform project

    ```bash
    terraform init
    ```
3. Make relevant changes to the terraform code.

4. Apply the changes and provision the infrastructure:

    ```bash
    terraform apply
    ```

Some Notes on Terraform are in [start](./start), [state](./state), [vars-and-outputs](./vars-and-outputs) and [modules](./modules).

---


---
