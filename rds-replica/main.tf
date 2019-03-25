resource "aws_db_instance" "default" {
  identifier                  = "mysql-replica"
  port                        = "${var.database_port}"
  instance_class              = "${var.instance_class}"
  storage_encrypted           = "${var.storage_encrypted}"
  vpc_security_group_ids      = ["${aws_security_group.default.*.id}"]
  #db_subnet_group_name        = "${join("", aws_db_subnet_group.default.*.name)}"
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
  monitoring_interval         = "${var.monitoring_interval}"
  replicate_source_db         = "${var.replicate_source_db}"
}

resource "aws_db_subnet_group" "default" {
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
