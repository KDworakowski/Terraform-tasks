variable "id" {
    type = string
}

resource "random_" "default" {
    byte_length = 8
}
resource "local_file" "task2-out" {
    content  = templatefile("backends.tpl", {ip_addrs = ["0.0.0.0", "8.8.8.8"], port=8080})
    filename = "${path.module}/backend-${random_.default.hex}"
    file_permission = "0640"
}
