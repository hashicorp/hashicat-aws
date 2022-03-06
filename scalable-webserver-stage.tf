module "scalable-web-server" {
  source  = "app.terraform.io/telstra-yogita/scalable-web-server/aws"
  version = "1.0.0"
  # insert required variables here
  cluster_name           = "yogitad_webserver_stage"
  db_remote_state_bucket = module.s3-bucket.s3_bucket_id
  db_remote_state_key    =  "webserver_stage"
  instance_type = var.instance_type
  min_size      = 2
  max_size      = 3
  vpc_id = "${aws_vpc.hashicat.id}"
}

resource "aws_autoscaling_schedule" "scale_out_during_business_hours" {
  scheduled_action_name = "scale-out-during-business-hours"
  min_size              = 2
  max_size              = 10
  desired_capacity      = 10
  recurrence            = "0 9 * * *"

  autoscaling_group_name = module.scalable-web-server.asg_name
}

resource "aws_autoscaling_schedule" "scale_in_at_night" {
  scheduled_action_name = "scale-in-at-night"
  min_size              = 2
  max_size              = 10
  desired_capacity      = 2
  recurrence            = "0 17 * * *"

  autoscaling_group_name = module.scalable-web-server.asg_name
}
