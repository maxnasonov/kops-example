variable "domain_zone" {
  description = "Domain zone."
}

variable "max_subnet_count" {
  default     = 0
  description = "Sets the maximum amount of subnets to deploy.  0 will deploy a subnet for every availablility zone within the region"
}
