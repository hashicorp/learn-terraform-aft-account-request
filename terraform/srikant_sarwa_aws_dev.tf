module "srikant_sarwa" {
  source = "./modules/aft-account-request"

  control_tower_parameters = {
    AccountEmail              = "srikant.sarwa+aws@sysdig.com"
    AccountName               = "Srikant-Sarwa-AWS-Dev"
    ManagedOrganizationalUnit = "CS Accounts"
    SSOUserEmail              = "srikant.sarwa+aws@sysdig.com"
    SSOUserFirstName          = "Srikant"
    SSOUserLastName           = "Sarwa"
  }

  account_tags = {
    "CS Owner" = "Srikant Sarwa",
    "CS Manager" = "Mohammed Ali"
  }

  change_management_parameters = {
    change_requested_by = "Michael Scholl"
    change_reason       = "Initial provisioning of Srikant Sarwa's AWS Dev account."
  }

  custom_fields = {
    group = "non-prod"
  }

  account_customizations_name = "cs-dev"
}
