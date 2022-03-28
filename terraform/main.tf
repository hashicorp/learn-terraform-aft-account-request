module "sandbox" {
  source = "./modules/aft-account-request"

  control_tower_parameters = {
    AccountEmail              = "jake.purdham@tombola.com"
    AccountName               = "testworkload-aft"
    ManagedOrganizationalUnit = "Workloads"
    SSOUserEmail              = "jake.purdham@tombola.com"
    SSOUserFirstName          = "Jake"
    SSOUserLastName           = "Purdham"
  }

  account_tags = {
    "Name" = "testworkload-aft",
    "Description" = "test workloads account created by AFT"
  }

  change_management_parameters = {
    change_requested_by = "Infrastructure-jake"
    change_reason       = "Initial account creation"
  }

  custom_fields = {
    group = "non-prod"
  }

  account_customizations_name = "testworkloads"
}
