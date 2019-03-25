resource "aws_db_instance" "default" {
  count                       = "${var.enabled == "true" ? 1 : 0}"
  identifier                  = "mysql-master"
  name                        = "${var.database_name}"
  username                    = "${var.database_user}"
  password                    = "${var.database_password}"
  port                        = "${var.database_port}"
  engine                      = "${var.engine}"
  engine_version              = "${var.engine_version}"
  instance_class              = "${var.instance_class}"
  allocated_storage           = "${var.allocated_storage}"
  storage_encrypted           = "${var.storage_encrypted}"
  vpc_security_group_ids      = ["${join("", aws_security_group.default.*.id)}"]
  db_subnet_group_name        = "${join("", aws_db_subnet_group.default.*.name)}"
  parameter_group_name        = "${length(var.parameter_group_name) > 0 ? var.parameter_group_name : join("", aws_db_parameter_group.default.*.name)}"
  option_group_name           = "${length(var.option_group_name) > 0 ? var.option_group_name : join("", aws_db_option_group.default.*.name)}"
  license_model               = "${var.license_model}"
  multi_az                    = "${var.multi_az}"
  storage_type                = "${var.storage_type}"
  iops                        = "${var.iops}"
  publicly_accessible         = "${var.publicly_accessible}"
  #snapshot_identifier         = "${var.snapshot_identifier}"
  allow_major_version_upgrade = "${var.allow_major_version_upgrade}"
  auto_minor_version_upgrade  = "${var.auto_minor_version_upgrade}"
  apply_immediately           = "${var.apply_immediately}"
  maintenance_window          = "${var.maintenance_window}"
  skip_final_snapshot         = "${var.skip_final_snapshot}"
  copy_tags_to_snapshot       = "${var.copy_tags_to_snapshot}"
  backup_retention_period     = "${var.backup_retention_period}"
  backup_window               = "${var.backup_window}"
  final_snapshot_identifier   = "${var.final_snapshot_identifier}"
}

resource "aws_db_parameter_group" "default" {
  count     = "${(length(var.parameter_group_name) == 0 && var.enabled == "true") ? 1 : 0}"
  family    = "${var.db_parameter_group}"
  parameter = "${var.db_parameter}"
}

resource "aws_db_option_group" "default" {
  count                = "${(length(var.option_group_name) == 0 && var.enabled == "true") ? 1 : 0}"
  engine_name          = "${var.engine}"
  major_engine_version = "${var.major_engine_version}"
  option               = "${var.db_options}"

  lifecycle {
    create_before_destroy = true
  }
}

resource "aws_db_subnet_group" "default" {
  count      = "${var.enabled == "true" ? 1 : 0}"
  subnet_ids = ["${var.subnet_ids}"]
}

resource "aws_security_group" "default" {
  count       = "${var.enabled == "true" ? 1 : 0}"
  description = "Allow inbound traffic from the security groups"
  vpc_id      = "${var.vpc_id}"

  ingress {
    from_port       = "${var.database_port}"
    to_port         = "${var.database_port}"
    protocol        = "tcp"
    #security_groups = ["${var.security_group_ids}"]
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

}

resource "aws_route53_record" "mysql-master" {
  zone_id = "${var.dns_zone_id}"
  name    = "mysql-master"
  type    = "CNAME"
  records   = ["${aws_db_instance.default.*.address}"]
  ttl     = "300"
}
