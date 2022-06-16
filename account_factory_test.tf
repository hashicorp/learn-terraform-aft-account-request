module "account_factory_test" {
  source = "./modules/aft-account-request"

  control_tower_parameters = {
    AccountEmail              = "michael.scholl+afttest@sysdig.com"
    AccountName               = "CS-Account-Factory-Test"
    ManagedOrganizationalUnit = "CS Accounts"
    SSOUserEmail              = "michael.scholl+aws@sysdig.com"
    SSOUserFirstName          = "Michael"
    SSOUserLastName           = "Scholl"
  }

  account_tags = {
    "CS Owner" = "Michael Scholl",
    "CS Manager" = "Mohammed Ali"
  }

  change_management_parameters = {
    change_requested_by = "Michael Scholl"
    change_reason       = "Creating a test AWS Account Factory account."
  }

  custom_fields = {
    group = "non-prod"
  }

  account_customizations_name = "cs_dev"
}
