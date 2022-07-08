module "tf_vpc" {
  source ="./module"

  network_project="terraform-training-project1"
  vpc_name="terraform-vpc-mt4039"
}