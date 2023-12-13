module "aft-act04" {
  source = "./modules/aft-account-request"

  control_tower_parameters = {
    AccountEmail              = "rvadde+ymus-vend121203@skepticservices.com"
    AccountName               = "AFT_Vended_121204"
    ManagedOrganizationalUnit = "AFT_Mgmt"
    SSOUserEmail              = "rajesh.vadde@trace3.com"
    SSOUserFirstName          = "Raj"
    SSOUserLastName           = "V"
  }

  account_tags = {
    "Environment" = "Workloads-NonProd"
    "Company" = "YMUS"
    "Business Unit" = "Applications"
  }

  change_management_parameters = {
    change_requested_by = "Trace3"
    change_reason       = "Testing the AFT Account Vending"
  }

  custom_fields = {
    group = "Non-Prod"
  }

  account_customizations_name = "Workloads_NonProd"
}
