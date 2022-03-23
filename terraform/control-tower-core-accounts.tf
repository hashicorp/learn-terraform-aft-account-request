module "control-tower-core" {
  source = "./modules/aft-account-request"

  control_tower_parameters = {
    AccountEmail              = "vivkarri-log+ct-logging@amazon.com"
    AccountName               = "Log Archive"
    ManagedOrganizationalUnit = "Security"
    SSOUserEmail              = "vivkarri-log+ct-logging@amazon.com"
    SSOUserFirstName          = "Admin"
    SSOUserLastName           = "User"
  }

  account_tags = {
    "AccountName" = "Log Archive Account"
    "CostCenter"  = "007"
  }

  change_management_parameters = {
    change_requested_by = "vivkarri@amazon.com"
    change_reason       = "Adding Log Archive account to AFT"
  }

  custom_fields = {
    group = "core-account"
  }

  account_customizations_name = "control-tower-core"
}
