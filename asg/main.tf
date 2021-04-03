

resource "aws_autoscaling_group" "auto_scalling" {
  name                 = var.asgname
  launch_configuration = var.launchconfiguration
  min_size             = var.asgminsize
  max_size             = var.asgmaxsize
  vpc_zone_identifier  = var.subnets
  target_group_arns    = [var.target_group_arns]

  lifecycle {
    create_before_destroy = true
  }

  tag {
    key                 = "Name"
    value               = var.asgname
    propagate_at_launch = true
  }
}