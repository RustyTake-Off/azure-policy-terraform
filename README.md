# azure-policy-terraform

## [Project](https://github.com/RustyTake-Off/projects)

Create azure policy initiatives with terraform which then can be assigned to resources.

## How to use

Clone this repository.

Modify the <b>./example/example.tfvars</b> file to your own liking.


Open terminal in the repository location and run:

```powershell
terraform init
```

```bash
terraform plan -var-file="./example/example.tfvars"
```

Also reference [how to use remote modules](https://developer.hashicorp.com/terraform/language/modules/sources) in terraform.
