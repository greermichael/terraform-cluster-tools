variable "max_attempts" {
  default = 18
}

variable "poll_time_in_seconds" {
  default = 10
}

variable "expected_node_count" {}

variable depends_on {
  default = []
  type    = "list"
}
