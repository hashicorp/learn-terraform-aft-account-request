module "sandbox" {
  source = "./modules/aft-account-request"

  control_tower_parameters = {
    AccountEmail              = "moyayala.dev@gmail.com"
    AccountName               = "dev"
    ManagedOrganizationalUnit = "Learn AFT"
    SSOUserEmail              = "moyayala.aft.management@gmail.com"
    SSOUserFirstName          = "Dev"
    SSOUserLastName           = "AFT"
  }

  account_tags = {
    "Name" = "Dev"
  }

  change_management_parameters = {
    change_requested_by = "Moises Ayala"
    change_reason       = "Need a Dev env"
  }

  custom_fields = {
    group = "non-prod"
  }

  account_customizations_name = "dev"
}
