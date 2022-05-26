module "sandbox" {
  source = "./modules/aft-account-request"

  control_tower_parameters = {
    AccountEmail              = "afttest2022@gmail.com"
    AccountName               = "spaceQueue"
    ManagedOrganizationalUnit = "SpaceTest"
    SSOUserEmail              = "afttest2022@gmail.com"
    SSOUserFirstName          = "Sandbox"
    SSOUserLastName           = "AFT"
  }

  account_tags = {
    "Learn Tutorial" = "AFT"
  }

  change_management_parameters = {
    change_requested_by = "Oleksandr Bozhuk"
    change_reason       = "Attempt to deploy 1st account factory acc"
  }

  custom_fields = {
    group = "non-prod"
  }

  account_customizations_name = "sandbox"
}
