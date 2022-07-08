provider "google" {

  version = "4.27.0"
  project="terraform-training-project1"
  //Credentials=file("serviceacc.json")
  credentials = file("serviceacc.json")

}