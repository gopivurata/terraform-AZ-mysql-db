resource "aws_db_instance" "my_az-db_instance" {
  allocated_storage          = var.storage
  multi_az                   = var.multi_az
  db_name                    = var.db-name
  identifier                 = var.identifier
  engine                     = var.engine
  engine_version             = var.engine_version
  instance_class             = var.instance_class
  storage_type               = var.iops
  username                   = local.username
  password                   = local.password
  parameter_group_name       = var.parameter_group_name
  option_group_name          = var.option_group_name 
  skip_final_snapshot        = true
  auto_minor_version_upgrade = false
  #availability_zone          = var.availability_zone
  network_type               = var.network_type
  publicly_accessible        = true
  #replicate_source_db        = var.replicate_source_db
}