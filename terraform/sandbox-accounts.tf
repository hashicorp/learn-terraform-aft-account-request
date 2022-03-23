module "sandbox" {
  source = "./modules/aft-account-request"

  control_tower_parameters = {
    AccountEmail              = "vivkarri+sandbox-ou@amazon.com"
    AccountName               = "SandboxOUAccount"
    ManagedOrganizationalUnit = "Network"
    SSOUserEmail              = "vivkarri+sandbox-ou@amazon.com"
    SSOUserFirstName          = "Admin"
    SSOUserLastName           = "User"
  }

  account_tags = {
    "AccountName" = "Sand Box Account"
    "CostCenter"  = "12345"
  }

  change_management_parameters = {
    change_requested_by = "vivkarri@amazon.com"
    change_reason       = "Adding Sandbox account to AFT"
  }

  custom_fields = {
    group = "non-prod"
  }

  account_customizations_name = "sandbox"
}
