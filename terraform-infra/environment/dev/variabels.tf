variable "region" {
    description = "The AWS region to deploy resources in."
    type        = string
    default     = "us-west-2"
  
}
variable "environment" {
    description = "The deployment environment (e.g., dev, staging, prod)."
    type        = string
    default     = "dev"
}
variable "project" {
    description = "The name of the project."
    type        = string
    default     = "goal-tracker"

}
variable "vpc_cidr" {
    description = "The CIDR block for the VPC."
    type        = string
    default     = "10.0.0.0/16"
}
variable "availablitiy_zones" {
    description = "List of availability zones to use."
    type        = list(string)
    default     = ["us-west-2a", "us-west-2b"]
  
}
variable "public_subnet_cidrs" {
    description = "List of CIDR blocks for public subnets."
    type        = list(string)
    default     = ["10.0.1.0/24","10.0.2.0/24"]
  
}
variable "frontend_subnet_cidrs" {
    description = "List of CIDR blocks for frontend subnets."
    type        = list(string)
    default     = ["10.0.11.0/24","10.0.12.0/24"]
}
variable "backend_subnet_cidrs" {
    description = "List of CIDR blocks for frontend subnets."
    type        = list(string)
    default     = ["10.0.21.0/24","10.0.22.0/24"]
}
variable "database_subnet_cidrs" {
    description = "List of CIDR blocks for frontend subnets."
    type        = list(string)
    default     = ["10.0.31.0/24","10.0.32.0/24"]
}
variable "single_nat_gateway" {
    description = "Whether to use a single NAT gateway for all availability zones."
    type        = bool
    default     = true
}
variable "ssh_key_name" {
    description = "The name of the SSH key pair to use for EC2 instances."
    type        = string
  
}
variable "allowed_ssh_cidr" {
    description = "The CIDR block allowed to access EC2 instances via SSH."
    type        = string
    default     = "0.0.0.0/0"
  
}
variable "bastion_instance_type" {

    description = "The instance type for the bastion host."
    type        = string
    default = "t3.micro"
  
}
variable "frontend_instance_type" {

    description = "The instance type for the frontend host."
    type        = string
    default = "t3.micro"
  
}
variable "frontend_min_size" {

    
    type        = number
    default = 2
}
variable "frontend_max_size" {
    type        = number
    default = 4
}
variable "fronted_desired_capacity" {

    type        = number
    default = 2
}
variable "backend_instance_type" {

    description = "The instance type for the frontend host."
    type        = string
    default = "t3.micro"
  
}
variable "backend_min_size" {

    
    type        = number
    default = 2
}
variable "backend_max_size" {
    type        = number
    default = 6
}
variable "backend_desired_capacity" {

    type        = number
    default = 2
}
variable "db_instance_class" {
    description = "The instance class for the RDS database."
    type        = string
    default     = "db.t3.micro"
}
variable "db_allocated_storage" {
    description = "The allocated storage for the RDS database in GB."
    type        = number
    default     = 20
}
variable "db_name" {
    description = "The name of the RDS database."
    type        = string
    default     = "goaltrackerdb"
}
variable "db_engine_version" {
    description = "The version of the database engine."
    type        = string
    default     = "13.4"
}
variable "db_username" {
    description = "The master username for the RDS database."
    type        = string
    default = "postgres"
}
variable "db_multi_az" {
    description = "enable multi-AZ deployment for RDS."
    type= bool
    default = false
  
}
variable "db_backup_retention" {
  description = "RDS backup retention period in days"
  type        = number
  default     = 7
}
variable "db_skip_final_snapshot" {
  description = "Skip final snapshot on destroy"
  type        = bool
  default     = true
}
variable "tags" {
    description = "A map of tags to assign to resources."
    type        = map(string)
    default = {
      Environment = "dev"
      Project     = "goal-tracker"
    }
}
variable "frontend_docker_image" {
    description = "Docker image for the frontend application."
    type        = string
    default     = "mohammed102003/goal-tracker-frontend:latest"
  
}
variable "backend_docker_image" {
    description = "Docker image for the backend application."
    type        = string
    default     = "mohammed102003/goal-tracker-backend:latest"
  
}
variable "dockerhub_username" {
    description = "DockerHub username for pulling private images."
    type        = string
    default = "mohammed102003"
  
}
variable "dockerhub_password" {
    description = "DockerHub password for pulling private images."
    type        = string
    default = ""
    sensitive = true
}

