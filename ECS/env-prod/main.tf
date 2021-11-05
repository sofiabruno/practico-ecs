resource "aws_ecs_cluster" "grupo1-ecs-cluster" {
  name = "grupo1-ecs-cluster"

  setting {
    name  = "containerInsights"
    value = "disabled"
  }
  tags = {
    Name = "Ort Grupo 1 practico ECS"
  }
}

