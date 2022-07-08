//terraform {
//  backend "gcs" {
//    //    bucket = "statefile_bucket_mt4039"
//    //    prefix = "bucket-tf-test.tfstate"
//    //    credentials = file("serviceacc.json") }
//  }
//}
resource "google_storage_bucket" "static-site" {
  //count=3
  name = var.bucket_name
 // location      = var.location-list[count.index]
  location = var.location
  force_destroy = true

  uniform_bucket_level_access = true

}