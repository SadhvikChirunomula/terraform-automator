module "bq" {
  source = "./module"
  dataset_id = "dataset_mt4039"
  description = "hi everyone"
  friendly_name = "mt4039"
  location = "EU"
}