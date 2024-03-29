variable "namespace" {
  default     = "global"
  description = "Namespace"
}

variable "enabled" {
  description = "Set to false to prevent the module from creating any resources"
  default     = "true"
}

variable "stage" {
  default     = "default"
  description = "Stage"
}

variable "name" {
  default     = "redis"
  description = "Name"
}

variable "security_groups" {
  type        = "list"
  default     = []
  description = "AWS security group ids"
}

variable "vpc_id" {
  default     = "REQUIRED"
  description = "AWS VPC id"
}

variable "subnets" {
  type        = "list"
  description = "AWS subnet ids"
  default     = []
}

variable "maintenance_window" {
  default     = "wed:03:00-wed:04:00"
  description = "Maintenance window"
}

variable "cluster_size" {
  default     = "1"
  description = "Count of nodes in cluster"
}

variable "port" {
  default     = "6379"
  description = "Redis port"
}

variable "instance_type" {
  default     = "cache.t2.micro"
  description = "Elastic cache instance type"
}

variable "family" {
  default     = "redis4.0"
  description = "Redis family "
}

variable "parameter" {
  type        = "list"
  default     = []
  description = "A list of Redis parameters to apply. Note that parameters may differ from one Redis family to another"
}

variable "engine_version" {
  default     = "4.0.10"
  description = "Redis engine version"
}

variable "at_rest_encryption_enabled" {
  default     = "false"
  description = "Enable encryption at rest"
}

variable "transit_encryption_enabled" {
  default     = "true"
  description = "Enable TLS"
}

variable "notification_topic_arn" {
  default     = ""
  description = "Notification topic arn"
}

variable "alarm_cpu_threshold_percent" {
  default     = "75"
  description = "CPU threshold alarm level"
}

variable "alarm_memory_threshold_bytes" {
  # 10MB
  default     = "10000000"
  description = "Ram threshold alarm level"
}

variable "alarm_actions" {
  type        = "list"
  description = "Alarm action list"
  default     = []
}

variable "ok_actions" {
  type        = "list"
  description = "The list of actions to execute when this alarm transitions into an OK state from any other state. Each action is specified as an Amazon Resource Number (ARN)"
  default     = []
}

variable "apply_immediately" {
  default     = "true"
  description = "Apply changes immediately"
}

variable "automatic_failover" {
  default     = "false"
  description = "Automatic failover (Not available for T1/T2 instances)"
}

variable "availability_zones" {
  type        = "list"
  description = "Availability zone ids"
  default     = []
}

variable "delimiter" {
  type        = "string"
  default     = "-"
  description = "Delimiter between `name`, `namespace`, `stage` and `attributes`"
}

variable "attributes" {
  type        = "list"
  description = "Additional attributes (_e.g._ \"1\")"
  default     = []
}

variable "tags" {
  type        = "map"
  description = "Additional tags (_e.g._ map(\"BusinessUnit\",\"ABC\")"
  default     = {}
}

variable "auth_token" {
  type        = "string"
  description = "Auth token for password protecting redis, transit_encryption_enabled must be set to 'true'! Password must be longer than 16 chars"
  default     = ""
}

variable "replication_group_id" {
  type        = "string"
  description = "Replication group ID with the following constraints: \nA name must contain from 1 to 20 alphanumeric characters or hyphens. \n The first character must be a letter. \n A name cannot end with a hyphen or contain two consecutive hyphens."
  default     = ""
}

variable "allowed_cidr_blocks" {
  type        = "list"
  default     = []
  description = "CIDR blocks from which to allow `ingress` traffic to the DB instance"
}

variable "dns_zone_id" {
  type        = "string"
  default     = ""
  description = "The ID of the DNS Zone in Route53 where a new DNS record will be created for the DB host name"
}

variable "host_name" {
  type        = "string"
  default     = "db"
  description = "The DB host name created in Route53"
}
