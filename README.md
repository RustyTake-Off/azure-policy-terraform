# azure-policy-terraform

## [Project](https://github.com/RustyTake-Off/projects)

Create azure policy initiatives with terraform which then can be assigned to resources.

## How to use

Clone this repository.

```bash
git clone https://github.com/RustyTake-Off/azure-policy-terraform.git
```

Modify the <b>./example/example.tfvars</b> file to your own liking.


Open terminal in the repository location and run:

```bash
terraform init
```

```bash
terraform plan -var-file="./example/example.tfvars"
```

```bash
terraform apply -var-file="./example/example.tfvars"
```

Also reference [how to use remote modules](https://developer.hashicorp.com/terraform/language/modules/sources) in terraform.
