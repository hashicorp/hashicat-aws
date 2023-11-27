resource "aws_rds_cluster" "postgresql" {
  cluster_identifier      = "aurora-cluster-demo"
  engine                  = "aurora-postgresql"
  availability_zones      = ["us-west-2a", "us-west-2b"]
  database_name           = "mydb"
  master_username         = "sonar_admin"
  master_password         = "xy"
  backup_retention_period = 5
  storage_encrypted = false
  preferred_backup_window = "07:00-09:00"
}