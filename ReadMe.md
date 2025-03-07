## 🧑🏽‍💻To Apply This Configuration 
1. Make one directory in your local with any name.
2. Add this all files in that directory.
3. And then open this dir in VS-Code.
## ⛓️‍💥Configure the AWS Account to terminal (powershell)
```
Go to AWS Profile ---> Security Credentials ----> Access Keys ----> Create Access Keys
```

 - Copy Key ID and Secret Key somewhere it is one time view Only.

 - NOTE: Do Not Share this ID and Secret Key with anyone. 
#
<h3>- Now come to terminal executes the command as below:</h3>

```
aws Configure
```
AWS Access Key ID [None]: ABCDXXXXXXXXXXXXX<br>
AWS Secret Access Key [None]: ************************************<br>
Default region name [None]: us-east-1<br>
Default output format [None]: Json<br>

```bash
Using the aws configure we do not need to add our keys in terraform.tfvars file.
and if you not configure so you have to add keys in terraform.tfvars file and also
add variables for that in variables.tf file. if you do aws configure so ignore this.
```
#

<h2>💻Now come to VS-Code open your project folder.<br>
you see main.tf file there, click on that file.<br>
Then open VS-Code terminal.</h2>

```bash
in VS-Code Terminal-->New Terminal then terminal is open then executes
below coomands:
```
<b>1. To Initializes a Terraform working directory.</b>
```bash
terraform init
```

<b>2. Checks Terraform configuration syntax and internal consistency.</b>

```bash
terraform validate
```

<b>3. Formats Terraform code (this command only arrange your code in proper format)</b>

```bash
terraform fmt
```

<b>4. To Creates an execution plan:** Shows what Terraform *will* do without actually making changes.</b>

```bash
terraform plan
```

<b>5. Executes the changes defined in the Terraform plan.</b>

```bash
terraform apply --auto-approve
```
