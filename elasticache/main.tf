#
# Security Group Resources
#
resource "aws_security_group" "default" {
  count  = "${var.enabled == "true" ? 1 : 0}"
  vpc_id = "${var.vpc_id}"

  ingress {
    from_port       = "${var.port}"              # Redis
    to_port         = "${var.port}"
    protocol        = "tcp"
    #security_groups = ["${var.security_groups}"]
    cidr_blocks     = ["${var.allowed_cidr_blocks}"]
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

}

resource "aws_elasticache_subnet_group" "default" {
  count      = "${var.enabled == "true" ? 1 : 0}"
  name       = "redis"
  subnet_ids = ["${var.subnets}"]
}

resource "aws_elasticache_parameter_group" "default" {
  count     = "${var.enabled == "true" ? 1 : 0}"
  name      = "redis"
  family    = "${var.family}"
  parameter = "${var.parameter}"
}

resource "aws_elasticache_replication_group" "default" {
  count = "${var.enabled == "true" ? 1 : 0}"

  #auth_token                    = "${var.auth_token}"
  replication_group_id          = "redis"
  replication_group_description = "redis"
  node_type                     = "${var.instance_type}"
  number_cache_clusters         = "${var.cluster_size}"
  port                          = "${var.port}"
  #parameter_group_name          = "${aws_elasticache_parameter_group.default.name}"
  parameter_group_name          = "default.redis4.0"
  availability_zones            = ["${slice(var.availability_zones, 0, var.cluster_size)}"]
  automatic_failover_enabled    = "${var.automatic_failover}"
  subnet_group_name             = "${aws_elasticache_subnet_group.default.name}"
  security_group_ids            = ["${aws_security_group.default.id}"]
  maintenance_window            = "${var.maintenance_window}"
  notification_topic_arn        = "${var.notification_topic_arn}"
  engine_version                = "${var.engine_version}"
  at_rest_encryption_enabled    = "${var.at_rest_encryption_enabled}"
  transit_encryption_enabled    = "${var.transit_encryption_enabled}"

}

resource "aws_route53_record" "redis" {
  zone_id = "${var.dns_zone_id}"
  name    = "redis"
  type    = "CNAME"
  records = ["${aws_elasticache_replication_group.default.*.primary_endpoint_address}"]
  ttl     = "300"
}
