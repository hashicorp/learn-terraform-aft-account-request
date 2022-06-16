module "michael_scholl" {
  source = "./modules/aft-account-request"

  control_tower_parameters = {
    AccountEmail              = "michael.scholl+aws@sysdig.com"
    AccountName               = "Michael Scholl - Sysdig Development"
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
    change_reason       = "Adding of Michael Scholl's AWS Dev account."
  }

  custom_fields = {
    group = "non-prod"
  }

  account_customizations_name = "cs-dev"
}
