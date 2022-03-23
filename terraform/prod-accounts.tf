module "production" {
  source = "./modules/aft-account-request"

  control_tower_parameters = {
    AccountEmail              = "vivkarri+lz0928-security@amazon.com"
    AccountName               = "security"
    ManagedOrganizationalUnit = "Production"
    SSOUserEmail              = "vivkarri+lz0928-security@amazon.com"
    SSOUserFirstName          = "Admin"
    SSOUserLastName           = "User"
  }

  account_tags = {
    "AccountName" = "Security Account"
    "CostCenter"  = "98765"
  }

  change_management_parameters = {
    change_requested_by = "vivkarri@amazon.com"
    change_reason       = "Adding Security account to AFT"
  }

  custom_fields = {
    group = "prod"
  }

  account_customizations_name = "production"
}
