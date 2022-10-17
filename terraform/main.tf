module "harry-winters-sandbox" {
  source = "./modules/aft-account-request"

  control_tower_parameters = {
    AccountEmail              = "harry.winters+personal_sandbox@tunetx.com"
    AccountName               = "harry-winters-sandbox"
    ManagedOrganizationalUnit = "Bioinformatics-0"
    SSOUserEmail              = "harry.winters+personal_sandbox@tunetx.com"
    SSOUserFirstName          = "Harry"
    SSOUserLastName           = "Winters"
  }

  account_tags = {
    "workload" = "sandbox"
  }

  change_management_parameters = {
    change_requested_by = "Harry Winters"
    change_reason       = "Initial account provisioning."
  }

  custom_fields = {}

}
