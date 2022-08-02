resource "local_file" "BSF" {
    content = "BSF Devops"
    filename = "${path.module}/BSF.bar"
    file_permission = 0640
}
