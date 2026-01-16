output "asg_id" {
    description = "The ID of the Backend Auto Scaling Group"
    value       = aws_autoscaling_group.backend.id
  
}
output "asg_name" {
    description = "The name of the Backend Auto Scaling Group"
    value       = aws_autoscaling_group.backend.name
}
output "launch_template_id" {
    description = "The ID of the Backend Launch Template"
    value       = aws_launch_template.backend.id
  
}
output "launch_template_latest_version" {
    description = "The latest version of the Backend Launch Template"
    value       = aws_launch_template.backend.latest_version
  
}
output "asg_arn" {
    description = "The ARN of the Backend Auto Scaling Group"
    value       = aws_autoscaling_group.backend.arn
}
