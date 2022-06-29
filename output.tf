output "consul_sg_id" {
  value = "${module.consul_server_sg.consul_server_sg_id}"
}

output "consul_lb_sg_id" {
  value = "${module.consul_lb_aws.consul_lb_sg_id}"
}

output "consul_tg_http_8500_arn" {
  value = "${module.consul_lb_aws.consul_tg_http_8500_arn}"
}

output "consul_tg_https_8080_arn" {
  value = "${module.consul_lb_aws.consul_tg_https_8080_arn}"
}

output "consul_lb_dns" {
  value = "${module.consul_lb_aws.consul_lb_dns}"
}

output "consul_asg_id" {
  value = "${element(concat(aws_autoscaling_group.consul.*.id, list("")), 0)}" # TODO: Workaround for issue #11210
}

output "consul_username" {
  value = "${lookup(var.users, var.os)}"
}
