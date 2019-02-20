resource "null_resource" "validate_cluster" {
  provisioner "local-exec" {
    command = <<EOC
        /bin/bash \
        ${path.module}/local-exec/validate-nodes.sh \
        ${var.expected_node_count} \
        ${var.poll_time_in_seconds} \
        ${var.max_attempts}
EOC
  }
}
