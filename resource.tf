resource "null_resource" "ping" {

  triggers = {
    always_run = "${timestamp()}"
  }

  provisioner "local-exec" {
    command =<<EOT
      ping 10.0.80.11
    EOT
  }
}
