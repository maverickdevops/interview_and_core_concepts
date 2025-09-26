resource "local_file" "mypet" {
  filename             = "malcolm.txt"
  content              = "My pet's name is Malcolm Oscar Joelstein"
  directory_permission = "0777"
}
