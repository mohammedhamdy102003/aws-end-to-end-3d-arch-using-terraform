output "alb_id" {
    description = "The ID of the Application Load Balancer"
    value       = aws_alb.main.id
  
}
output "alb_arn" {
    description = "The ARN of the Application Load Balancer"
    value       = aws_alb.main.arn
  
}

output "alb_dns_name" {
  description = "DNS name of the Application Load Balancer"
  value       = aws_lb.main.dns_name
}

output "alb_zone_id" {
  description = "Zone ID of the Application Load Balancer"
  value       = aws_lb.main.zone_id
}

output "target_group_arn" {
  description = "ARN of the target group"
  value       = aws_lb_target_group.main.arn
}

output "target_group_name" {
  description = "Name of the target group"
  value       = aws_lb_target_group.main.name
}
output "http_listener_arn" {
  description = "ARN of the HTTP listener"
  value       = aws_lb_listener.http.arn
}
output "http_listener_port" {
  description = "Port of the HTTP listener"
  value       = aws_lb_listener.http.port
}
output "http_listener_protocol" {
  description = "Protocol of the HTTP listener"
  value       = aws_lb_listener.http.protocol
}
