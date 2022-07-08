resource "local_file" "foo" {
  content_base64  = "d2VsY29tZSB0byB0ZXJyYWZvcm0h"
  //  //sensitive_content = "This is sensitive content"
  //  //content = "hello everyone"
  //source = "C:\\WorkArea\\Terraform_Workarea\\lfs\\file\\.terraform\\ex1.txt"
  filename = "${path.module}/helloworld.txt"
  file_permission = "474"
  directory_permission = "777"

}
//resource "local_sensitive_file" "exm" {
//  content = "Hello everyone"
//  //sensitive_content="hii there! welcome"
//  //content_base64  = "d2VsY29tZSB0byB0ZXJyYWZvcm0h"
//  //source = "C:\\Terraform\\lfs\\file\\examp.txt"
//  filename="${path.module}/sensitivefile.txt"
//  file_permission = "474"
//  directory_permission = "777"
//}