variable "region" {
  default = "us-east-1"
}

variable "cluster-name" {
  default = "flow-fargate"
}
variable "cluster-version" {
  default = "1.21"
}
variable "map_accounts" {
  description = "Additional AWS account numbers to add to the aws-auth configmap."
  type        = list(string)

  default = [
    "202127779570"
  ]
}

variable "map_roles" {
  description = "Additional IAM roles to add to the aws-auth configmap."
  type = list(object({
    rolearn  = string
    username = string
    groups   = list(string)
  }))

  default = [
  ]
}

variable "map_users" {
  description = "Additional IAM users to add to the aws-auth configmap."
  type = list(object({
    userarn  = string
    username = string
    groups   = list(string)
  }))

  default = [
    {
      userarn  = "arn:aws:iam::202127779570:user/opcitosaas"
      username = "opcitosaas"
      groups   = ["system:masters"]
    },
    {
      userarn  = "arn:aws:iam::202127779570:user/SmtpEFUser"
      username = "SmtpEFUser"
      groups   = ["system:masters"]
    }
  ]
}
