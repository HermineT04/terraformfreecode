# variable "tags" {
#     type = map(string)
  
# }

variable "team" {
    type = string
    validation {
      condition = contains (["devops", "finance","security"], var.team)
      error_message = "Please provide an exiting team name."
    }
  
}

variable "service" {
    type = string
    validation {
      condition = contains (["s3", "ec2","rds"], var.service)
      error_message = "Please provide an allowed service name."
    }
  
}