module "sandbox" {
  source = "./modules/aft-account-request"

  control_tower_parameters = {
    AccountEmail              = "mkeen215@gmail.com"
    AccountName               = "test-01"
    ManagedOrganizationalUnit = "Sandbox"
    SSOUserEmail              = "mkeen215@gmail.com"
    SSOUserFirstName          = "Chiamaka"
    SSOUserLastName           = "Obitude"
  }

  account_tags = {
    "Learn Tutorial" = "AFT"
  }

  change_management_parameters = {
    change_requested_by = "HashiCorp Learn"
    change_reason       = "Learn AWS Control Tower Account Factory for Terraform"
  }

  custom_fields = {
    group = "non-prod"
  }

  account_customizations_name = "sandbox"
}
