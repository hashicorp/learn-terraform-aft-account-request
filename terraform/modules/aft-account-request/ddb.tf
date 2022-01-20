resource "aws_dynamodb_table_item" "account-request" {
  table_name = var.account_request_table
  hash_key   = var.account_request_table_hash

  item = templatefile("${path.module}/templates/ddb-item.json.tftpl", {
    control_tower_parameters = var.control_tower_parameters
    change_management_parameters = var.change_management_parameters
    account_tags = var.account_tags
    custom_fields = var.custom_fields
    account_customizations_name = var.account_customizations_name
  })
}
