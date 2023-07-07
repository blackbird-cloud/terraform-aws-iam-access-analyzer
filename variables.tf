variable "name" {
  type        = string
  description = "(Required) Name of the Analyzer."
}

variable "type" {
  type        = string
  description = "(Optional) Type of Analyzer. Valid values are ACCOUNT or ORGANIZATION. Defaults to ACCOUNT."
  default     = "ACCOUNT"
}

variable "tags" {
  type        = map(string)
  default     = {}
  description = "(Optional) Key-value map of resource tags. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level."
}
