# create an auto scaling group for the ecs service
resource "aws_appautoscaling_target" "ecs_target" {
  max_capacity       = 4
  min_capacity       = 1
  resource_id        = "service/${var.ecs_cluster}/${var.ecs_service}"
  scalable_dimension = "ecs:service:DesiredCount"
  service_namespace  = "ecs"
}