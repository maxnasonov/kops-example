output "id" {
  value       = "${join("", aws_elasticache_replication_group.default.*.id)}"
  description = "Redis cluster id"
}

output "security_group_id" {
  value       = "${join("", aws_security_group.default.*.id)}"
  description = "Security group id"
}

output "port" {
  value       = "${var.port}"
  description = "Redis port"
}

output "host" {
  #value       = "${module.dns_host_name.hostname}"
  value       = "${join("", aws_route53_record.redis.*.fqdn)}"
  description = "Redis host"
}
