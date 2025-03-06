/AWS_PROJECT_WITHTERRAFORM<br>
│<br>
├── /modules
│   ├── /networking
│   │   ├── main.tf
│   │   ├── variables.tf
│   │   └── outputs.tf
│   │
│   ├── /security_group
│   │   ├── main.tf
│   │   ├── variables.tf
│   │   └── outputs.tf
│   │
│   ├── /Ec2
│   │   ├── main.tf
│   │   ├── variables.tf
│   │   └── outputs.tf
│   │
│   ├── /load_balancer
│   │   ├── main.tf
│   │   ├── variables.tf
│   │   └── outputs.tf
│   │
│   └── /s3_bucket            
│       ├── main.tf
│       ├── variables.tf
│       └── outputs.tf
│
├── main.tf
├── provider.tf
├── variables.tf
├── outputs.tf
└── terraform.tfvars


===========================================================================================================================
#
Configure the AWS Account to terminal 

Go to AWS Profile ---> Security Credentials ----> Access Keys ----> Create Access Keys 

Copy Key ID and Secret Key somewhare it is one time view Only.

NOTE: Do Not Share this ID and Secret Key with anyone. 

Now come to terminal give the command as below
1. aws Configure

AWS Access Key ID [None]: ABCDXXXXXXXXXXXXX
AWS Secret Access Key [None]: ************************************
Default region name [None]: us-east-1
Default output format [None]: Json


Run the following commands

1. terraform init 

       * **Initializes a Terraform working directory.**
       * **Configures the backend:** Sets up where Terraform state is stored.
       * **Downloads provider plugins:** Installs the necessary provider software.
       * **Downloads modules:** Fetches any required Terraform modules.
       * **Creates a lock file:** Records provider versions for consistency.
       * **Performs basic configuration checks.**

2. terraform fmt

       * **Formats Terraform code** for consistency.
       * **Ensures standard style:** Indentation, spacing, etc.

3. terraform validate

       * **Checks Terraform configuration syntax and internal consistency.**
       * **Verifies if the configuration is syntactically valid and internally consistent.**
       * **Does not check provider-specific logic or interact with remote resources.**

--------------------------------------------------------------------------------------------------
| Feature          | terraform fmt                         | terraform validate                   |
|------------------|---------------------------------------|--------------------------------------|
| Purpose          | Code style and formatting             | Syntax and internal consistency      |
| Action           | Rewrites code to a standard format    | Checks for errors and inconsistencies|
| Focus            | Readability and consistency           | Correctness and functionality        |
| Changes Code     | Yes (formatting changes)              | No (analysis only)                   |
| Checks           | Indentation, spacing, style           | Syntax, missing arguments, logic     |
| Provider checks  | No                                    | No                                   |
---------------------------------------------------------------------------------------------------

4. terraform plan

       * **Creates an execution plan:** Shows what Terraform *will* do without actually making changes.
       * **Previews changes:** Displays the resources that will be created, modified, or destroyed.
       * **Helps prevent surprises:** Allows you to review and verify changes before applying them.

5. terraform apply

       * **Executes the changes defined in the Terraform plan.**
       * **Creates, modifies, or destroys infrastructure resources.**
       * **Updates the Terraform state file to reflect the actual infrastructure.**

6. terraform destroy 

       * ** It will delete entire infrastructure.

===================================================================================================================================
