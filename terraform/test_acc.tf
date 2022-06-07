module "test_acc" {
  source = "./modules/aft-account-request"

  control_tower_parameters = {
    AccountEmail              = "nonewqwqq"
    AccountName               = "test-acc"
    ManagedOrganizationalUnit = "noneewqewqe"
    SSOUserEmail              = "noneqw"
    SSOUserFirstName          = "noneqwq"
    SSOUserLastName           = "noneewqewqqqq"
  }
  account_tags = {
    "tag1" = "value1"
  }

  change_management_parameters = {
    change_requested_by = "Some automation system"
    change_reason       = "Ticket_1234"
  }
  custom_fields = {
    "custom_field1" = "value1"
  }

  account_customizations_name = "test_acc"
}