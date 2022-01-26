#
module "sandbox" {
  source = "./modules/aft-account-request"

  control_tower_parameters = {
    AccountEmail              = "jefferson_costa@outlook.com"
    AccountName               = "sandbox-aft-jefferson"
    ManagedOrganizationalUnit = "Sandbox"
    SSOUserEmail              = "jefferson_costa@outlook.com"
    SSOUserFirstName          = "Jefferson"
    SSOUserLastName           = "Costa"
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
