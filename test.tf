/**
 * * Important information about this infrastructure
 * ! This configuration is deprecated, do not use in new deployments
 * ? Should we refactor this for better performance?
 * TODO: Add comprehensive validation rules
 * //TODO: Mark this task as complete.
 * FIXME: The resource naming convention needs standardization
 * HACK: Temporary workaround for provider version issue
 * BUG: This module has known issues with nested loops
 * UNDONE: Remove debug outputs before production
 */

variable "project_name" {
  description = "The name of the project"
  type        = string
  default     = "my-project"
  
  #? Should we add validation for project name format?
  #TODO: Add regex validation
}

locals {
  #* Common tags applied to all resources
  common_tags = {
    Project     = var.project_name
    Environment = var.environment
    ManagedBy   = "terraform"
    #UNDONE: Add cost center tag after approval
  }
  
  #BUG: This calculation might overflow for large numbers
  resource_count = length(var.resource_list) * 2
  
  #FIXME: This naming convention needs review
  resource_name = "${var.project_name}-${var.environment}"
}

output "project_name" {
  description = "The name of the project"
  value       = var.project_name
  
  #* This output is used by other modules
}

#//// aws_instance.example -- commentedOut;
