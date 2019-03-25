locals = {
  bastion_autoscaling_group_ids          = ["${aws_autoscaling_group.bastions-k8s-int-riskmatch-com.id}"]
  bastion_security_group_ids             = ["${aws_security_group.bastion-k8s-int-riskmatch-com.id}"]
  bastions_role_arn                      = "${aws_iam_role.bastions-k8s-int-riskmatch-com.arn}"
  bastions_role_name                     = "${aws_iam_role.bastions-k8s-int-riskmatch-com.name}"
  cluster_name                           = "k8s.int-riskmatch.com"
  master_autoscaling_group_ids           = ["${aws_autoscaling_group.master-ap-southeast-1a-masters-k8s-int-riskmatch-com.id}"]
  master_security_group_ids              = ["${aws_security_group.masters-k8s-int-riskmatch-com.id}"]
  masters_role_arn                       = "${aws_iam_role.masters-k8s-int-riskmatch-com.arn}"
  masters_role_name                      = "${aws_iam_role.masters-k8s-int-riskmatch-com.name}"
  node_autoscaling_group_ids             = ["${aws_autoscaling_group.nodes-k8s-int-riskmatch-com.id}"]
  node_security_group_ids                = ["${aws_security_group.nodes-k8s-int-riskmatch-com.id}"]
  node_subnet_ids                        = ["${aws_subnet.ap-southeast-1a-k8s-int-riskmatch-com.id}", "${aws_subnet.ap-southeast-1b-k8s-int-riskmatch-com.id}", "${aws_subnet.ap-southeast-1c-k8s-int-riskmatch-com.id}"]
  nodes_role_arn                         = "${aws_iam_role.nodes-k8s-int-riskmatch-com.arn}"
  nodes_role_name                        = "${aws_iam_role.nodes-k8s-int-riskmatch-com.name}"
  region                                 = "ap-southeast-1"
  route_table_private-ap-southeast-1a_id = "${aws_route_table.private-ap-southeast-1a-k8s-int-riskmatch-com.id}"
  route_table_private-ap-southeast-1b_id = "${aws_route_table.private-ap-southeast-1b-k8s-int-riskmatch-com.id}"
  route_table_private-ap-southeast-1c_id = "${aws_route_table.private-ap-southeast-1c-k8s-int-riskmatch-com.id}"
  route_table_public_id                  = "${aws_route_table.k8s-int-riskmatch-com.id}"
  subnet_ap-southeast-1a_id              = "${aws_subnet.ap-southeast-1a-k8s-int-riskmatch-com.id}"
  subnet_ap-southeast-1b_id              = "${aws_subnet.ap-southeast-1b-k8s-int-riskmatch-com.id}"
  subnet_ap-southeast-1c_id              = "${aws_subnet.ap-southeast-1c-k8s-int-riskmatch-com.id}"
  subnet_utility-ap-southeast-1a_id      = "${aws_subnet.utility-ap-southeast-1a-k8s-int-riskmatch-com.id}"
  subnet_utility-ap-southeast-1b_id      = "${aws_subnet.utility-ap-southeast-1b-k8s-int-riskmatch-com.id}"
  subnet_utility-ap-southeast-1c_id      = "${aws_subnet.utility-ap-southeast-1c-k8s-int-riskmatch-com.id}"
  vpc_cidr_block                         = "${aws_vpc.k8s-int-riskmatch-com.cidr_block}"
  vpc_id                                 = "${aws_vpc.k8s-int-riskmatch-com.id}"
}

output "bastion_autoscaling_group_ids" {
  value = ["${aws_autoscaling_group.bastions-k8s-int-riskmatch-com.id}"]
}

output "bastion_security_group_ids" {
  value = ["${aws_security_group.bastion-k8s-int-riskmatch-com.id}"]
}

output "bastions_role_arn" {
  value = "${aws_iam_role.bastions-k8s-int-riskmatch-com.arn}"
}

output "bastions_role_name" {
  value = "${aws_iam_role.bastions-k8s-int-riskmatch-com.name}"
}

output "cluster_name" {
  value = "k8s.int-riskmatch.com"
}

output "master_autoscaling_group_ids" {
  value = ["${aws_autoscaling_group.master-ap-southeast-1a-masters-k8s-int-riskmatch-com.id}"]
}

output "master_security_group_ids" {
  value = ["${aws_security_group.masters-k8s-int-riskmatch-com.id}"]
}

output "masters_role_arn" {
  value = "${aws_iam_role.masters-k8s-int-riskmatch-com.arn}"
}

output "masters_role_name" {
  value = "${aws_iam_role.masters-k8s-int-riskmatch-com.name}"
}

output "node_autoscaling_group_ids" {
  value = ["${aws_autoscaling_group.nodes-k8s-int-riskmatch-com.id}"]
}

output "node_security_group_ids" {
  value = ["${aws_security_group.nodes-k8s-int-riskmatch-com.id}"]
}

output "node_subnet_ids" {
  value = ["${aws_subnet.ap-southeast-1a-k8s-int-riskmatch-com.id}", "${aws_subnet.ap-southeast-1b-k8s-int-riskmatch-com.id}", "${aws_subnet.ap-southeast-1c-k8s-int-riskmatch-com.id}"]
}

output "nodes_role_arn" {
  value = "${aws_iam_role.nodes-k8s-int-riskmatch-com.arn}"
}

output "nodes_role_name" {
  value = "${aws_iam_role.nodes-k8s-int-riskmatch-com.name}"
}

output "region" {
  value = "ap-southeast-1"
}

output "route_table_private-ap-southeast-1a_id" {
  value = "${aws_route_table.private-ap-southeast-1a-k8s-int-riskmatch-com.id}"
}

output "route_table_private-ap-southeast-1b_id" {
  value = "${aws_route_table.private-ap-southeast-1b-k8s-int-riskmatch-com.id}"
}

output "route_table_private-ap-southeast-1c_id" {
  value = "${aws_route_table.private-ap-southeast-1c-k8s-int-riskmatch-com.id}"
}

output "route_table_public_id" {
  value = "${aws_route_table.k8s-int-riskmatch-com.id}"
}

output "subnet_ap-southeast-1a_id" {
  value = "${aws_subnet.ap-southeast-1a-k8s-int-riskmatch-com.id}"
}

output "subnet_ap-southeast-1b_id" {
  value = "${aws_subnet.ap-southeast-1b-k8s-int-riskmatch-com.id}"
}

output "subnet_ap-southeast-1c_id" {
  value = "${aws_subnet.ap-southeast-1c-k8s-int-riskmatch-com.id}"
}

output "subnet_utility-ap-southeast-1a_id" {
  value = "${aws_subnet.utility-ap-southeast-1a-k8s-int-riskmatch-com.id}"
}

output "subnet_utility-ap-southeast-1b_id" {
  value = "${aws_subnet.utility-ap-southeast-1b-k8s-int-riskmatch-com.id}"
}

output "subnet_utility-ap-southeast-1c_id" {
  value = "${aws_subnet.utility-ap-southeast-1c-k8s-int-riskmatch-com.id}"
}

output "vpc_cidr_block" {
  value = "${aws_vpc.k8s-int-riskmatch-com.cidr_block}"
}

output "vpc_id" {
  value = "${aws_vpc.k8s-int-riskmatch-com.id}"
}

provider "aws" {
  region = "ap-southeast-1"
}

resource "aws_autoscaling_attachment" "bastions-k8s-int-riskmatch-com" {
  elb                    = "${aws_elb.bastion-k8s-int-riskmatch-com.id}"
  autoscaling_group_name = "${aws_autoscaling_group.bastions-k8s-int-riskmatch-com.id}"
}

resource "aws_autoscaling_attachment" "master-ap-southeast-1a-masters-k8s-int-riskmatch-com" {
  elb                    = "${aws_elb.api-k8s-int-riskmatch-com.id}"
  autoscaling_group_name = "${aws_autoscaling_group.master-ap-southeast-1a-masters-k8s-int-riskmatch-com.id}"
}

resource "aws_autoscaling_group" "bastions-k8s-int-riskmatch-com" {
  name                 = "bastions.k8s.int-riskmatch.com"
  launch_configuration = "${aws_launch_configuration.bastions-k8s-int-riskmatch-com.id}"
  max_size             = 1
  min_size             = 1
  vpc_zone_identifier  = ["${aws_subnet.utility-ap-southeast-1a-k8s-int-riskmatch-com.id}", "${aws_subnet.utility-ap-southeast-1b-k8s-int-riskmatch-com.id}", "${aws_subnet.utility-ap-southeast-1c-k8s-int-riskmatch-com.id}"]

  tag = {
    key                 = "KubernetesCluster"
    value               = "k8s.int-riskmatch.com"
    propagate_at_launch = true
  }

  tag = {
    key                 = "Name"
    value               = "bastions.k8s.int-riskmatch.com"
    propagate_at_launch = true
  }

  tag = {
    key                 = "k8s.io/cluster-autoscaler/node-template/label/kops.k8s.io/instancegroup"
    value               = "bastions"
    propagate_at_launch = true
  }

  tag = {
    key                 = "k8s.io/role/bastion"
    value               = "1"
    propagate_at_launch = true
  }

  metrics_granularity = "1Minute"
  enabled_metrics     = ["GroupDesiredCapacity", "GroupInServiceInstances", "GroupMaxSize", "GroupMinSize", "GroupPendingInstances", "GroupStandbyInstances", "GroupTerminatingInstances", "GroupTotalInstances"]
}

resource "aws_autoscaling_group" "master-ap-southeast-1a-masters-k8s-int-riskmatch-com" {
  name                 = "master-ap-southeast-1a.masters.k8s.int-riskmatch.com"
  launch_configuration = "${aws_launch_configuration.master-ap-southeast-1a-masters-k8s-int-riskmatch-com.id}"
  max_size             = 1
  min_size             = 1
  vpc_zone_identifier  = ["${aws_subnet.ap-southeast-1a-k8s-int-riskmatch-com.id}"]

  tag = {
    key                 = "KubernetesCluster"
    value               = "k8s.int-riskmatch.com"
    propagate_at_launch = true
  }

  tag = {
    key                 = "Name"
    value               = "master-ap-southeast-1a.masters.k8s.int-riskmatch.com"
    propagate_at_launch = true
  }

  tag = {
    key                 = "k8s.io/cluster-autoscaler/node-template/label/kops.k8s.io/instancegroup"
    value               = "master-ap-southeast-1a"
    propagate_at_launch = true
  }

  tag = {
    key                 = "k8s.io/role/master"
    value               = "1"
    propagate_at_launch = true
  }

  metrics_granularity = "1Minute"
  enabled_metrics     = ["GroupDesiredCapacity", "GroupInServiceInstances", "GroupMaxSize", "GroupMinSize", "GroupPendingInstances", "GroupStandbyInstances", "GroupTerminatingInstances", "GroupTotalInstances"]
}

resource "aws_autoscaling_group" "nodes-k8s-int-riskmatch-com" {
  name                 = "nodes.k8s.int-riskmatch.com"
  launch_configuration = "${aws_launch_configuration.nodes-k8s-int-riskmatch-com.id}"
  max_size             = 3
  min_size             = 3
  vpc_zone_identifier  = ["${aws_subnet.ap-southeast-1a-k8s-int-riskmatch-com.id}", "${aws_subnet.ap-southeast-1b-k8s-int-riskmatch-com.id}", "${aws_subnet.ap-southeast-1c-k8s-int-riskmatch-com.id}"]

  tag = {
    key                 = "KubernetesCluster"
    value               = "k8s.int-riskmatch.com"
    propagate_at_launch = true
  }

  tag = {
    key                 = "Name"
    value               = "nodes.k8s.int-riskmatch.com"
    propagate_at_launch = true
  }

  tag = {
    key                 = "k8s.io/cluster-autoscaler/node-template/label/kops.k8s.io/instancegroup"
    value               = "nodes"
    propagate_at_launch = true
  }

  tag = {
    key                 = "k8s.io/role/node"
    value               = "1"
    propagate_at_launch = true
  }

  metrics_granularity = "1Minute"
  enabled_metrics     = ["GroupDesiredCapacity", "GroupInServiceInstances", "GroupMaxSize", "GroupMinSize", "GroupPendingInstances", "GroupStandbyInstances", "GroupTerminatingInstances", "GroupTotalInstances"]
}

resource "aws_ebs_volume" "a-etcd-events-k8s-int-riskmatch-com" {
  availability_zone = "ap-southeast-1a"
  size              = 20
  type              = "gp2"
  encrypted         = false

  tags = {
    KubernetesCluster                             = "k8s.int-riskmatch.com"
    Name                                          = "a.etcd-events.k8s.int-riskmatch.com"
    "k8s.io/etcd/events"                          = "a/a"
    "k8s.io/role/master"                          = "1"
    "kubernetes.io/cluster/k8s.int-riskmatch.com" = "owned"
  }
}

resource "aws_ebs_volume" "a-etcd-main-k8s-int-riskmatch-com" {
  availability_zone = "ap-southeast-1a"
  size              = 20
  type              = "gp2"
  encrypted         = false

  tags = {
    KubernetesCluster                             = "k8s.int-riskmatch.com"
    Name                                          = "a.etcd-main.k8s.int-riskmatch.com"
    "k8s.io/etcd/main"                            = "a/a"
    "k8s.io/role/master"                          = "1"
    "kubernetes.io/cluster/k8s.int-riskmatch.com" = "owned"
  }
}

resource "aws_eip" "ap-southeast-1a-k8s-int-riskmatch-com" {
  vpc = true

  tags = {
    KubernetesCluster                             = "k8s.int-riskmatch.com"
    Name                                          = "ap-southeast-1a.k8s.int-riskmatch.com"
    "kubernetes.io/cluster/k8s.int-riskmatch.com" = "owned"
  }
}

resource "aws_eip" "ap-southeast-1b-k8s-int-riskmatch-com" {
  vpc = true

  tags = {
    KubernetesCluster                             = "k8s.int-riskmatch.com"
    Name                                          = "ap-southeast-1b.k8s.int-riskmatch.com"
    "kubernetes.io/cluster/k8s.int-riskmatch.com" = "owned"
  }
}

resource "aws_eip" "ap-southeast-1c-k8s-int-riskmatch-com" {
  vpc = true

  tags = {
    KubernetesCluster                             = "k8s.int-riskmatch.com"
    Name                                          = "ap-southeast-1c.k8s.int-riskmatch.com"
    "kubernetes.io/cluster/k8s.int-riskmatch.com" = "owned"
  }
}

resource "aws_elb" "api-k8s-int-riskmatch-com" {
  name = "api-k8s-int-riskmatch-com-6ri0q9"

  listener = {
    instance_port     = 443
    instance_protocol = "TCP"
    lb_port           = 443
    lb_protocol       = "TCP"
  }

  security_groups = ["${aws_security_group.api-elb-k8s-int-riskmatch-com.id}"]
  subnets         = ["${aws_subnet.utility-ap-southeast-1a-k8s-int-riskmatch-com.id}", "${aws_subnet.utility-ap-southeast-1b-k8s-int-riskmatch-com.id}", "${aws_subnet.utility-ap-southeast-1c-k8s-int-riskmatch-com.id}"]

  health_check = {
    target              = "SSL:443"
    healthy_threshold   = 2
    unhealthy_threshold = 2
    interval            = 10
    timeout             = 5
  }

  idle_timeout = 300

  tags = {
    KubernetesCluster = "k8s.int-riskmatch.com"
    Name              = "api.k8s.int-riskmatch.com"
  }
}

resource "aws_elb" "bastion-k8s-int-riskmatch-com" {
  name = "bastion-k8s-int-riskmatch-f0mv9r"

  listener = {
    instance_port     = 22
    instance_protocol = "TCP"
    lb_port           = 22
    lb_protocol       = "TCP"
  }

  security_groups = ["${aws_security_group.bastion-elb-k8s-int-riskmatch-com.id}"]
  subnets         = ["${aws_subnet.utility-ap-southeast-1a-k8s-int-riskmatch-com.id}", "${aws_subnet.utility-ap-southeast-1b-k8s-int-riskmatch-com.id}", "${aws_subnet.utility-ap-southeast-1c-k8s-int-riskmatch-com.id}"]

  health_check = {
    target              = "TCP:22"
    healthy_threshold   = 2
    unhealthy_threshold = 2
    interval            = 10
    timeout             = 5
  }

  idle_timeout = 300

  tags = {
    KubernetesCluster = "k8s.int-riskmatch.com"
    Name              = "bastion.k8s.int-riskmatch.com"
  }
}

resource "aws_iam_instance_profile" "bastions-k8s-int-riskmatch-com" {
  name = "bastions.k8s.int-riskmatch.com"
  role = "${aws_iam_role.bastions-k8s-int-riskmatch-com.name}"
}

resource "aws_iam_instance_profile" "masters-k8s-int-riskmatch-com" {
  name = "masters.k8s.int-riskmatch.com"
  role = "${aws_iam_role.masters-k8s-int-riskmatch-com.name}"
}

resource "aws_iam_instance_profile" "nodes-k8s-int-riskmatch-com" {
  name = "nodes.k8s.int-riskmatch.com"
  role = "${aws_iam_role.nodes-k8s-int-riskmatch-com.name}"
}

resource "aws_iam_role" "bastions-k8s-int-riskmatch-com" {
  name               = "bastions.k8s.int-riskmatch.com"
  assume_role_policy = "${file("${path.module}/data/aws_iam_role_bastions.k8s.int-riskmatch.com_policy")}"
}

resource "aws_iam_role" "masters-k8s-int-riskmatch-com" {
  name               = "masters.k8s.int-riskmatch.com"
  assume_role_policy = "${file("${path.module}/data/aws_iam_role_masters.k8s.int-riskmatch.com_policy")}"
}

resource "aws_iam_role" "nodes-k8s-int-riskmatch-com" {
  name               = "nodes.k8s.int-riskmatch.com"
  assume_role_policy = "${file("${path.module}/data/aws_iam_role_nodes.k8s.int-riskmatch.com_policy")}"
}

resource "aws_iam_role_policy" "bastions-k8s-int-riskmatch-com" {
  name   = "bastions.k8s.int-riskmatch.com"
  role   = "${aws_iam_role.bastions-k8s-int-riskmatch-com.name}"
  policy = "${file("${path.module}/data/aws_iam_role_policy_bastions.k8s.int-riskmatch.com_policy")}"
}

resource "aws_iam_role_policy" "masters-k8s-int-riskmatch-com" {
  name   = "masters.k8s.int-riskmatch.com"
  role   = "${aws_iam_role.masters-k8s-int-riskmatch-com.name}"
  policy = "${file("${path.module}/data/aws_iam_role_policy_masters.k8s.int-riskmatch.com_policy")}"
}

resource "aws_iam_role_policy" "nodes-k8s-int-riskmatch-com" {
  name   = "nodes.k8s.int-riskmatch.com"
  role   = "${aws_iam_role.nodes-k8s-int-riskmatch-com.name}"
  policy = "${file("${path.module}/data/aws_iam_role_policy_nodes.k8s.int-riskmatch.com_policy")}"
}

resource "aws_internet_gateway" "k8s-int-riskmatch-com" {
  vpc_id = "${aws_vpc.k8s-int-riskmatch-com.id}"

  tags = {
    KubernetesCluster                             = "k8s.int-riskmatch.com"
    Name                                          = "k8s.int-riskmatch.com"
    "kubernetes.io/cluster/k8s.int-riskmatch.com" = "owned"
  }
}

resource "aws_key_pair" "kubernetes-k8s-int-riskmatch-com-38dffb855ceff7de0b890d77e0130fdf" {
  key_name   = "kubernetes.k8s.int-riskmatch.com-38:df:fb:85:5c:ef:f7:de:0b:89:0d:77:e0:13:0f:df"
  public_key = "${file("${path.module}/data/aws_key_pair_kubernetes.k8s.int-riskmatch.com-38dffb855ceff7de0b890d77e0130fdf_public_key")}"
}

resource "aws_launch_configuration" "bastions-k8s-int-riskmatch-com" {
  name_prefix                 = "bastions.k8s.int-riskmatch.com-"
  image_id                    = "ami-0fed4a8bf189d9a5f"
  instance_type               = "t2.micro"
  key_name                    = "${aws_key_pair.kubernetes-k8s-int-riskmatch-com-38dffb855ceff7de0b890d77e0130fdf.id}"
  iam_instance_profile        = "${aws_iam_instance_profile.bastions-k8s-int-riskmatch-com.id}"
  security_groups             = ["${aws_security_group.bastion-k8s-int-riskmatch-com.id}"]
  associate_public_ip_address = true

  root_block_device = {
    volume_type           = "gp2"
    volume_size           = 32
    delete_on_termination = true
  }

  lifecycle = {
    create_before_destroy = true
  }

  enable_monitoring = false
}

resource "aws_launch_configuration" "master-ap-southeast-1a-masters-k8s-int-riskmatch-com" {
  name_prefix                 = "master-ap-southeast-1a.masters.k8s.int-riskmatch.com-"
  image_id                    = "ami-0fed4a8bf189d9a5f"
  instance_type               = "m3.medium"
  key_name                    = "${aws_key_pair.kubernetes-k8s-int-riskmatch-com-38dffb855ceff7de0b890d77e0130fdf.id}"
  iam_instance_profile        = "${aws_iam_instance_profile.masters-k8s-int-riskmatch-com.id}"
  security_groups             = ["${aws_security_group.masters-k8s-int-riskmatch-com.id}"]
  associate_public_ip_address = false
  user_data                   = "${file("${path.module}/data/aws_launch_configuration_master-ap-southeast-1a.masters.k8s.int-riskmatch.com_user_data")}"

  root_block_device = {
    volume_type           = "gp2"
    volume_size           = 64
    delete_on_termination = true
  }

  ephemeral_block_device = {
    device_name  = "/dev/sdc"
    virtual_name = "ephemeral0"
  }

  lifecycle = {
    create_before_destroy = true
  }

  enable_monitoring = false
}

resource "aws_launch_configuration" "nodes-k8s-int-riskmatch-com" {
  name_prefix                 = "nodes.k8s.int-riskmatch.com-"
  image_id                    = "ami-0fed4a8bf189d9a5f"
  instance_type               = "t2.medium"
  key_name                    = "${aws_key_pair.kubernetes-k8s-int-riskmatch-com-38dffb855ceff7de0b890d77e0130fdf.id}"
  iam_instance_profile        = "${aws_iam_instance_profile.nodes-k8s-int-riskmatch-com.id}"
  security_groups             = ["${aws_security_group.nodes-k8s-int-riskmatch-com.id}"]
  associate_public_ip_address = false
  user_data                   = "${file("${path.module}/data/aws_launch_configuration_nodes.k8s.int-riskmatch.com_user_data")}"

  root_block_device = {
    volume_type           = "gp2"
    volume_size           = 128
    delete_on_termination = true
  }

  lifecycle = {
    create_before_destroy = true
  }

  enable_monitoring = false
}

resource "aws_nat_gateway" "ap-southeast-1a-k8s-int-riskmatch-com" {
  allocation_id = "${aws_eip.ap-southeast-1a-k8s-int-riskmatch-com.id}"
  subnet_id     = "${aws_subnet.utility-ap-southeast-1a-k8s-int-riskmatch-com.id}"

  tags = {
    KubernetesCluster                             = "k8s.int-riskmatch.com"
    Name                                          = "ap-southeast-1a.k8s.int-riskmatch.com"
    "kubernetes.io/cluster/k8s.int-riskmatch.com" = "owned"
  }
}

resource "aws_nat_gateway" "ap-southeast-1b-k8s-int-riskmatch-com" {
  allocation_id = "${aws_eip.ap-southeast-1b-k8s-int-riskmatch-com.id}"
  subnet_id     = "${aws_subnet.utility-ap-southeast-1b-k8s-int-riskmatch-com.id}"

  tags = {
    KubernetesCluster                             = "k8s.int-riskmatch.com"
    Name                                          = "ap-southeast-1b.k8s.int-riskmatch.com"
    "kubernetes.io/cluster/k8s.int-riskmatch.com" = "owned"
  }
}

resource "aws_nat_gateway" "ap-southeast-1c-k8s-int-riskmatch-com" {
  allocation_id = "${aws_eip.ap-southeast-1c-k8s-int-riskmatch-com.id}"
  subnet_id     = "${aws_subnet.utility-ap-southeast-1c-k8s-int-riskmatch-com.id}"

  tags = {
    KubernetesCluster                             = "k8s.int-riskmatch.com"
    Name                                          = "ap-southeast-1c.k8s.int-riskmatch.com"
    "kubernetes.io/cluster/k8s.int-riskmatch.com" = "owned"
  }
}

resource "aws_route" "0-0-0-0--0" {
  route_table_id         = "${aws_route_table.k8s-int-riskmatch-com.id}"
  destination_cidr_block = "0.0.0.0/0"
  gateway_id             = "${aws_internet_gateway.k8s-int-riskmatch-com.id}"
}

resource "aws_route" "private-ap-southeast-1a-0-0-0-0--0" {
  route_table_id         = "${aws_route_table.private-ap-southeast-1a-k8s-int-riskmatch-com.id}"
  destination_cidr_block = "0.0.0.0/0"
  nat_gateway_id         = "${aws_nat_gateway.ap-southeast-1a-k8s-int-riskmatch-com.id}"
}

resource "aws_route" "private-ap-southeast-1b-0-0-0-0--0" {
  route_table_id         = "${aws_route_table.private-ap-southeast-1b-k8s-int-riskmatch-com.id}"
  destination_cidr_block = "0.0.0.0/0"
  nat_gateway_id         = "${aws_nat_gateway.ap-southeast-1b-k8s-int-riskmatch-com.id}"
}

resource "aws_route" "private-ap-southeast-1c-0-0-0-0--0" {
  route_table_id         = "${aws_route_table.private-ap-southeast-1c-k8s-int-riskmatch-com.id}"
  destination_cidr_block = "0.0.0.0/0"
  nat_gateway_id         = "${aws_nat_gateway.ap-southeast-1c-k8s-int-riskmatch-com.id}"
}

resource "aws_route53_record" "api-k8s-int-riskmatch-com" {
  name = "api.k8s.int-riskmatch.com"
  type = "A"

  alias = {
    name                   = "${aws_elb.api-k8s-int-riskmatch-com.dns_name}"
    zone_id                = "${aws_elb.api-k8s-int-riskmatch-com.zone_id}"
    evaluate_target_health = false
  }

  zone_id = "/hostedzone/Z3PF32JA8UNDR6"
}

resource "aws_route53_record" "bastion-k8s-int-riskmatch-com" {
  name = "bastion.k8s.int-riskmatch.com"
  type = "A"

  alias = {
    name                   = "${aws_elb.bastion-k8s-int-riskmatch-com.dns_name}"
    zone_id                = "${aws_elb.bastion-k8s-int-riskmatch-com.zone_id}"
    evaluate_target_health = false
  }

  zone_id = "/hostedzone/Z3PF32JA8UNDR6"
}

resource "aws_route_table" "k8s-int-riskmatch-com" {
  vpc_id = "${aws_vpc.k8s-int-riskmatch-com.id}"

  tags = {
    KubernetesCluster                             = "k8s.int-riskmatch.com"
    Name                                          = "k8s.int-riskmatch.com"
    "kubernetes.io/cluster/k8s.int-riskmatch.com" = "owned"
    "kubernetes.io/kops/role"                     = "public"
  }
}

resource "aws_route_table" "private-ap-southeast-1a-k8s-int-riskmatch-com" {
  vpc_id = "${aws_vpc.k8s-int-riskmatch-com.id}"

  tags = {
    KubernetesCluster                             = "k8s.int-riskmatch.com"
    Name                                          = "private-ap-southeast-1a.k8s.int-riskmatch.com"
    "kubernetes.io/cluster/k8s.int-riskmatch.com" = "owned"
    "kubernetes.io/kops/role"                     = "private-ap-southeast-1a"
  }
}

resource "aws_route_table" "private-ap-southeast-1b-k8s-int-riskmatch-com" {
  vpc_id = "${aws_vpc.k8s-int-riskmatch-com.id}"

  tags = {
    KubernetesCluster                             = "k8s.int-riskmatch.com"
    Name                                          = "private-ap-southeast-1b.k8s.int-riskmatch.com"
    "kubernetes.io/cluster/k8s.int-riskmatch.com" = "owned"
    "kubernetes.io/kops/role"                     = "private-ap-southeast-1b"
  }
}

resource "aws_route_table" "private-ap-southeast-1c-k8s-int-riskmatch-com" {
  vpc_id = "${aws_vpc.k8s-int-riskmatch-com.id}"

  tags = {
    KubernetesCluster                             = "k8s.int-riskmatch.com"
    Name                                          = "private-ap-southeast-1c.k8s.int-riskmatch.com"
    "kubernetes.io/cluster/k8s.int-riskmatch.com" = "owned"
    "kubernetes.io/kops/role"                     = "private-ap-southeast-1c"
  }
}

resource "aws_route_table_association" "private-ap-southeast-1a-k8s-int-riskmatch-com" {
  subnet_id      = "${aws_subnet.ap-southeast-1a-k8s-int-riskmatch-com.id}"
  route_table_id = "${aws_route_table.private-ap-southeast-1a-k8s-int-riskmatch-com.id}"
}

resource "aws_route_table_association" "private-ap-southeast-1b-k8s-int-riskmatch-com" {
  subnet_id      = "${aws_subnet.ap-southeast-1b-k8s-int-riskmatch-com.id}"
  route_table_id = "${aws_route_table.private-ap-southeast-1b-k8s-int-riskmatch-com.id}"
}

resource "aws_route_table_association" "private-ap-southeast-1c-k8s-int-riskmatch-com" {
  subnet_id      = "${aws_subnet.ap-southeast-1c-k8s-int-riskmatch-com.id}"
  route_table_id = "${aws_route_table.private-ap-southeast-1c-k8s-int-riskmatch-com.id}"
}

resource "aws_route_table_association" "utility-ap-southeast-1a-k8s-int-riskmatch-com" {
  subnet_id      = "${aws_subnet.utility-ap-southeast-1a-k8s-int-riskmatch-com.id}"
  route_table_id = "${aws_route_table.k8s-int-riskmatch-com.id}"
}

resource "aws_route_table_association" "utility-ap-southeast-1b-k8s-int-riskmatch-com" {
  subnet_id      = "${aws_subnet.utility-ap-southeast-1b-k8s-int-riskmatch-com.id}"
  route_table_id = "${aws_route_table.k8s-int-riskmatch-com.id}"
}

resource "aws_route_table_association" "utility-ap-southeast-1c-k8s-int-riskmatch-com" {
  subnet_id      = "${aws_subnet.utility-ap-southeast-1c-k8s-int-riskmatch-com.id}"
  route_table_id = "${aws_route_table.k8s-int-riskmatch-com.id}"
}

resource "aws_security_group" "api-elb-k8s-int-riskmatch-com" {
  name        = "api-elb.k8s.int-riskmatch.com"
  vpc_id      = "${aws_vpc.k8s-int-riskmatch-com.id}"
  description = "Security group for api ELB"

  tags = {
    KubernetesCluster                             = "k8s.int-riskmatch.com"
    Name                                          = "api-elb.k8s.int-riskmatch.com"
    "kubernetes.io/cluster/k8s.int-riskmatch.com" = "owned"
  }
}

resource "aws_security_group" "bastion-elb-k8s-int-riskmatch-com" {
  name        = "bastion-elb.k8s.int-riskmatch.com"
  vpc_id      = "${aws_vpc.k8s-int-riskmatch-com.id}"
  description = "Security group for bastion ELB"

  tags = {
    KubernetesCluster                             = "k8s.int-riskmatch.com"
    Name                                          = "bastion-elb.k8s.int-riskmatch.com"
    "kubernetes.io/cluster/k8s.int-riskmatch.com" = "owned"
  }
}

resource "aws_security_group" "bastion-k8s-int-riskmatch-com" {
  name        = "bastion.k8s.int-riskmatch.com"
  vpc_id      = "${aws_vpc.k8s-int-riskmatch-com.id}"
  description = "Security group for bastion"

  tags = {
    KubernetesCluster                             = "k8s.int-riskmatch.com"
    Name                                          = "bastion.k8s.int-riskmatch.com"
    "kubernetes.io/cluster/k8s.int-riskmatch.com" = "owned"
  }
}

resource "aws_security_group" "masters-k8s-int-riskmatch-com" {
  name        = "masters.k8s.int-riskmatch.com"
  vpc_id      = "${aws_vpc.k8s-int-riskmatch-com.id}"
  description = "Security group for masters"

  tags = {
    KubernetesCluster                             = "k8s.int-riskmatch.com"
    Name                                          = "masters.k8s.int-riskmatch.com"
    "kubernetes.io/cluster/k8s.int-riskmatch.com" = "owned"
  }
}

resource "aws_security_group" "nodes-k8s-int-riskmatch-com" {
  name        = "nodes.k8s.int-riskmatch.com"
  vpc_id      = "${aws_vpc.k8s-int-riskmatch-com.id}"
  description = "Security group for nodes"

  tags = {
    KubernetesCluster                             = "k8s.int-riskmatch.com"
    Name                                          = "nodes.k8s.int-riskmatch.com"
    "kubernetes.io/cluster/k8s.int-riskmatch.com" = "owned"
  }
}

resource "aws_security_group_rule" "all-master-to-master" {
  type                     = "ingress"
  security_group_id        = "${aws_security_group.masters-k8s-int-riskmatch-com.id}"
  source_security_group_id = "${aws_security_group.masters-k8s-int-riskmatch-com.id}"
  from_port                = 0
  to_port                  = 0
  protocol                 = "-1"
}

resource "aws_security_group_rule" "all-master-to-node" {
  type                     = "ingress"
  security_group_id        = "${aws_security_group.nodes-k8s-int-riskmatch-com.id}"
  source_security_group_id = "${aws_security_group.masters-k8s-int-riskmatch-com.id}"
  from_port                = 0
  to_port                  = 0
  protocol                 = "-1"
}

resource "aws_security_group_rule" "all-node-to-node" {
  type                     = "ingress"
  security_group_id        = "${aws_security_group.nodes-k8s-int-riskmatch-com.id}"
  source_security_group_id = "${aws_security_group.nodes-k8s-int-riskmatch-com.id}"
  from_port                = 0
  to_port                  = 0
  protocol                 = "-1"
}

resource "aws_security_group_rule" "api-elb-egress" {
  type              = "egress"
  security_group_id = "${aws_security_group.api-elb-k8s-int-riskmatch-com.id}"
  from_port         = 0
  to_port           = 0
  protocol          = "-1"
  cidr_blocks       = ["0.0.0.0/0"]
}

resource "aws_security_group_rule" "bastion-egress" {
  type              = "egress"
  security_group_id = "${aws_security_group.bastion-k8s-int-riskmatch-com.id}"
  from_port         = 0
  to_port           = 0
  protocol          = "-1"
  cidr_blocks       = ["0.0.0.0/0"]
}

resource "aws_security_group_rule" "bastion-elb-egress" {
  type              = "egress"
  security_group_id = "${aws_security_group.bastion-elb-k8s-int-riskmatch-com.id}"
  from_port         = 0
  to_port           = 0
  protocol          = "-1"
  cidr_blocks       = ["0.0.0.0/0"]
}

resource "aws_security_group_rule" "bastion-to-master-ssh" {
  type                     = "ingress"
  security_group_id        = "${aws_security_group.masters-k8s-int-riskmatch-com.id}"
  source_security_group_id = "${aws_security_group.bastion-k8s-int-riskmatch-com.id}"
  from_port                = 22
  to_port                  = 22
  protocol                 = "tcp"
}

resource "aws_security_group_rule" "bastion-to-node-ssh" {
  type                     = "ingress"
  security_group_id        = "${aws_security_group.nodes-k8s-int-riskmatch-com.id}"
  source_security_group_id = "${aws_security_group.bastion-k8s-int-riskmatch-com.id}"
  from_port                = 22
  to_port                  = 22
  protocol                 = "tcp"
}

resource "aws_security_group_rule" "https-api-elb-0-0-0-0--0" {
  type              = "ingress"
  security_group_id = "${aws_security_group.api-elb-k8s-int-riskmatch-com.id}"
  from_port         = 443
  to_port           = 443
  protocol          = "tcp"
  cidr_blocks       = ["0.0.0.0/0"]
}

resource "aws_security_group_rule" "https-elb-to-master" {
  type                     = "ingress"
  security_group_id        = "${aws_security_group.masters-k8s-int-riskmatch-com.id}"
  source_security_group_id = "${aws_security_group.api-elb-k8s-int-riskmatch-com.id}"
  from_port                = 443
  to_port                  = 443
  protocol                 = "tcp"
}

resource "aws_security_group_rule" "master-egress" {
  type              = "egress"
  security_group_id = "${aws_security_group.masters-k8s-int-riskmatch-com.id}"
  from_port         = 0
  to_port           = 0
  protocol          = "-1"
  cidr_blocks       = ["0.0.0.0/0"]
}

resource "aws_security_group_rule" "node-egress" {
  type              = "egress"
  security_group_id = "${aws_security_group.nodes-k8s-int-riskmatch-com.id}"
  from_port         = 0
  to_port           = 0
  protocol          = "-1"
  cidr_blocks       = ["0.0.0.0/0"]
}

resource "aws_security_group_rule" "node-to-master-tcp-1-2379" {
  type                     = "ingress"
  security_group_id        = "${aws_security_group.masters-k8s-int-riskmatch-com.id}"
  source_security_group_id = "${aws_security_group.nodes-k8s-int-riskmatch-com.id}"
  from_port                = 1
  to_port                  = 2379
  protocol                 = "tcp"
}

resource "aws_security_group_rule" "node-to-master-tcp-2382-4000" {
  type                     = "ingress"
  security_group_id        = "${aws_security_group.masters-k8s-int-riskmatch-com.id}"
  source_security_group_id = "${aws_security_group.nodes-k8s-int-riskmatch-com.id}"
  from_port                = 2382
  to_port                  = 4000
  protocol                 = "tcp"
}

resource "aws_security_group_rule" "node-to-master-tcp-4003-65535" {
  type                     = "ingress"
  security_group_id        = "${aws_security_group.masters-k8s-int-riskmatch-com.id}"
  source_security_group_id = "${aws_security_group.nodes-k8s-int-riskmatch-com.id}"
  from_port                = 4003
  to_port                  = 65535
  protocol                 = "tcp"
}

resource "aws_security_group_rule" "node-to-master-udp-1-65535" {
  type                     = "ingress"
  security_group_id        = "${aws_security_group.masters-k8s-int-riskmatch-com.id}"
  source_security_group_id = "${aws_security_group.nodes-k8s-int-riskmatch-com.id}"
  from_port                = 1
  to_port                  = 65535
  protocol                 = "udp"
}

resource "aws_security_group_rule" "ssh-elb-to-bastion" {
  type                     = "ingress"
  security_group_id        = "${aws_security_group.bastion-k8s-int-riskmatch-com.id}"
  source_security_group_id = "${aws_security_group.bastion-elb-k8s-int-riskmatch-com.id}"
  from_port                = 22
  to_port                  = 22
  protocol                 = "tcp"
}

resource "aws_security_group_rule" "ssh-external-to-bastion-elb-0-0-0-0--0" {
  type              = "ingress"
  security_group_id = "${aws_security_group.bastion-elb-k8s-int-riskmatch-com.id}"
  from_port         = 22
  to_port           = 22
  protocol          = "tcp"
  cidr_blocks       = ["0.0.0.0/0"]
}

resource "aws_subnet" "ap-southeast-1a-k8s-int-riskmatch-com" {
  vpc_id            = "${aws_vpc.k8s-int-riskmatch-com.id}"
  cidr_block        = "172.20.32.0/19"
  availability_zone = "ap-southeast-1a"

  tags = {
    KubernetesCluster                             = "k8s.int-riskmatch.com"
    Name                                          = "ap-southeast-1a.k8s.int-riskmatch.com"
    SubnetType                                    = "Private"
    "kubernetes.io/cluster/k8s.int-riskmatch.com" = "owned"
    "kubernetes.io/role/internal-elb"             = "1"
  }
}

resource "aws_subnet" "ap-southeast-1b-k8s-int-riskmatch-com" {
  vpc_id            = "${aws_vpc.k8s-int-riskmatch-com.id}"
  cidr_block        = "172.20.64.0/19"
  availability_zone = "ap-southeast-1b"

  tags = {
    KubernetesCluster                             = "k8s.int-riskmatch.com"
    Name                                          = "ap-southeast-1b.k8s.int-riskmatch.com"
    SubnetType                                    = "Private"
    "kubernetes.io/cluster/k8s.int-riskmatch.com" = "owned"
    "kubernetes.io/role/internal-elb"             = "1"
  }
}

resource "aws_subnet" "ap-southeast-1c-k8s-int-riskmatch-com" {
  vpc_id            = "${aws_vpc.k8s-int-riskmatch-com.id}"
  cidr_block        = "172.20.96.0/19"
  availability_zone = "ap-southeast-1c"

  tags = {
    KubernetesCluster                             = "k8s.int-riskmatch.com"
    Name                                          = "ap-southeast-1c.k8s.int-riskmatch.com"
    SubnetType                                    = "Private"
    "kubernetes.io/cluster/k8s.int-riskmatch.com" = "owned"
    "kubernetes.io/role/internal-elb"             = "1"
  }
}

resource "aws_subnet" "utility-ap-southeast-1a-k8s-int-riskmatch-com" {
  vpc_id            = "${aws_vpc.k8s-int-riskmatch-com.id}"
  cidr_block        = "172.20.0.0/22"
  availability_zone = "ap-southeast-1a"

  tags = {
    KubernetesCluster                             = "k8s.int-riskmatch.com"
    Name                                          = "utility-ap-southeast-1a.k8s.int-riskmatch.com"
    SubnetType                                    = "Utility"
    "kubernetes.io/cluster/k8s.int-riskmatch.com" = "owned"
    "kubernetes.io/role/elb"                      = "1"
  }
}

resource "aws_subnet" "utility-ap-southeast-1b-k8s-int-riskmatch-com" {
  vpc_id            = "${aws_vpc.k8s-int-riskmatch-com.id}"
  cidr_block        = "172.20.4.0/22"
  availability_zone = "ap-southeast-1b"

  tags = {
    KubernetesCluster                             = "k8s.int-riskmatch.com"
    Name                                          = "utility-ap-southeast-1b.k8s.int-riskmatch.com"
    SubnetType                                    = "Utility"
    "kubernetes.io/cluster/k8s.int-riskmatch.com" = "owned"
    "kubernetes.io/role/elb"                      = "1"
  }
}

resource "aws_subnet" "utility-ap-southeast-1c-k8s-int-riskmatch-com" {
  vpc_id            = "${aws_vpc.k8s-int-riskmatch-com.id}"
  cidr_block        = "172.20.8.0/22"
  availability_zone = "ap-southeast-1c"

  tags = {
    KubernetesCluster                             = "k8s.int-riskmatch.com"
    Name                                          = "utility-ap-southeast-1c.k8s.int-riskmatch.com"
    SubnetType                                    = "Utility"
    "kubernetes.io/cluster/k8s.int-riskmatch.com" = "owned"
    "kubernetes.io/role/elb"                      = "1"
  }
}

resource "aws_vpc" "k8s-int-riskmatch-com" {
  cidr_block           = "172.20.0.0/16"
  enable_dns_hostnames = true
  enable_dns_support   = true

  tags = {
    KubernetesCluster                             = "k8s.int-riskmatch.com"
    Name                                          = "k8s.int-riskmatch.com"
    "kubernetes.io/cluster/k8s.int-riskmatch.com" = "owned"
  }
}

resource "aws_vpc_dhcp_options" "k8s-int-riskmatch-com" {
  domain_name         = "ap-southeast-1.compute.internal"
  domain_name_servers = ["AmazonProvidedDNS"]

  tags = {
    KubernetesCluster                             = "k8s.int-riskmatch.com"
    Name                                          = "k8s.int-riskmatch.com"
    "kubernetes.io/cluster/k8s.int-riskmatch.com" = "owned"
  }
}

resource "aws_vpc_dhcp_options_association" "k8s-int-riskmatch-com" {
  vpc_id          = "${aws_vpc.k8s-int-riskmatch-com.id}"
  dhcp_options_id = "${aws_vpc_dhcp_options.k8s-int-riskmatch-com.id}"
}

terraform = {
  required_version = ">= 0.9.3"
}
