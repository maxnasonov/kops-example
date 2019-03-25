data "aws_availability_zones" "available" {}

locals {
  private_subnet_count = "${var.max_subnet_count == 0 ? length(data.aws_availability_zones.available.names) : var.max_subnet_count}"
}

resource "aws_subnet" "data" {
  count             = "${local.private_subnet_count}"
  vpc_id            = "${local.vpc_id}"
  availability_zone = "${element(data.aws_availability_zones.available.names, count.index)}"
  cidr_block        = "172.20.24${count.index}.0/24"
}

resource "aws_route_table" "data" {
  count = "${local.private_subnet_count}"
  vpc_id = "${local.vpc_id}"
}

resource "aws_route_table_association" "data" {
  count = "${local.private_subnet_count}"

  subnet_id      = "${element(aws_subnet.data.*.id, count.index)}"
  route_table_id = "${element(aws_route_table.data.*.id, count.index)}"
}

resource "aws_network_acl" "data" {
  vpc_id = "${local.vpc_id}"
  subnet_ids = ["${aws_subnet.data.*.id}"]

  egress {
    rule_no    = 100
    action     = "allow"
    cidr_block = "0.0.0.0/0"
    from_port  = 0
    to_port    = 0
    protocol   = "-1"
  }

  ingress {
    rule_no    = 100
    action     = "allow"
    cidr_block = "0.0.0.0/0"
    from_port  = 0
    to_port    = 0
    protocol   = "-1"
  }

}

resource "aws_subnet" "data-replica" {
  count             = "${local.private_subnet_count}"
  vpc_id            = "${local.vpc_id}"
  availability_zone = "${element(data.aws_availability_zones.available.names, count.index)}"
  #cidr_block        = "${cidrsubnet(signum(length(var.cidr_block)) == 1 ? var.cidr_block : data.aws_vpc.vpc.cidr_block, ceil(log(local.private_subnet_count * 2, 2)), count.index)}"
  cidr_block        = "172.20.23${count.index}.0/24"
}

resource "aws_route_table" "data-replica" {
  count = "${local.private_subnet_count}"
  vpc_id = "${local.vpc_id}"
}

resource "aws_route_table_association" "data-replica" {
  count = "${local.private_subnet_count}"

  subnet_id      = "${element(aws_subnet.data-replica.*.id, count.index)}"
  route_table_id = "${element(aws_route_table.data-replica.*.id, count.index)}"
}

resource "aws_network_acl" "data-replica" {
  vpc_id = "${local.vpc_id}"
  subnet_ids = ["${aws_subnet.data-replica.*.id}"]

  egress {
    rule_no    = 100
    action     = "allow"
    cidr_block = "0.0.0.0/0"
    from_port  = 0
    to_port    = 0
    protocol   = "-1"
  }

  ingress {
    rule_no    = 100
    action     = "allow"
    cidr_block = "0.0.0.0/0"
    from_port  = 0
    to_port    = 0
    protocol   = "-1"
  }

}


data "aws_route53_zone" "selected" {
  name = "${var.domain_zone}."
}

module "redis" {
  source             = "./elasticache"
  vpc_id             = "${local.vpc_id}"
  #subnets            = "${module.subnets.private_subnet_ids}"
  subnets = ["${aws_subnet.data.*.id}"]
  allowed_cidr_blocks = ["${local.vpc_cidr_block}"]
  maintenance_window = "fri:05:00-fri:06:00"
  cluster_size       = "1"
  instance_type      = "cache.t2.micro"
  apply_immediately  = "true"
  availability_zones = ["${slice(data.aws_availability_zones.available.names, 0, 1)}"]
  automatic_failover = "false"
  dns_zone_id        = "${data.aws_route53_zone.selected.zone_id}"
  host_name          = "redis"

  engine_version               = "4.0.10"
  family                       = "redis4.0"
  port                         = "6379"
  at_rest_encryption_enabled   = "false"
  transit_encryption_enabled   = "false"
}

module "mysql" {
  source                      = "./rds"
  dns_zone_id                 = "${data.aws_route53_zone.selected.zone_id}"
  database_name               = "db"
  database_user               = "admin"
  database_password           = "password"
  database_port               = 3306
  multi_az                    = "true"
  storage_type                = "gp2"
  allocated_storage           = "100"
  storage_encrypted           = "true"
  engine                      = "mysql"
  engine_version              = "5.7.17"
  major_engine_version        = "5.7"
  instance_class              = "db.t2.medium"
  db_parameter_group          = "mysql5.7"
  publicly_accessible         = "false"
  subnet_ids                  = ["${aws_subnet.data.*.id}"]
  vpc_id                      = "${local.vpc_id}"
  auto_minor_version_upgrade  = "true"
  allow_major_version_upgrade = "false"
  apply_immediately           = "false"
  maintenance_window          = "Mon:03:00-Mon:04:00"
  skip_final_snapshot         = "false"
  copy_tags_to_snapshot       = "true"
  backup_retention_period     = 7
  backup_window               = "22:00-03:00"
}

module "mysql_replica" {
  source                      = "./rds-replica"
  replicate_source_db         = "mysql-master"
  dns_zone_id                 = "${data.aws_route53_zone.selected.zone_id}"
  database_port               = 3306
  multi_az                    = "true"
  storage_type                = "gp2"
  storage_encrypted           = "true"
  instance_class              = "db.t2.medium"
  publicly_accessible         = "false"
  subnet_ids                  = ["${aws_subnet.data-replica.*.id}"]
  vpc_id                      = "${local.vpc_id}"
  auto_minor_version_upgrade  = "true"
  allow_major_version_upgrade = "false"
  apply_immediately           = "false"
  maintenance_window          = "Mon:03:00-Mon:04:00"
  skip_final_snapshot         = "false"
  copy_tags_to_snapshot       = "true"
  backup_retention_period     = 7
  backup_window               = "22:00-03:00"
}
