//module "sandbox" {
//  source = "./modules/aft-account-request"
//
//  control_tower_parameters = {
//    AccountEmail              = "<ACCOUNT EMAIL>"
//    AccountName               = "sandbox-aft"
//    ManagedOrganizationalUnit = "Learn AFT"
//    SSOUserEmail              = "<SSO EMAIL>"
//    SSOUserFirstName          = "Sandbox"
//    SSOUserLastName           = "AFT"
//  }
//
//  account_tags = {
//    "Learn Tutorial" = "AFT"
//  }
//
//  change_management_parameters = {
//    change_requested_by = "HashiCorp Learn"
//    change_reason       = "Learn AWS Control Tower Account Factory for Terraform"
//  }
//
//  custom_fields = {
//    group = "non-prod"
//  }
//
//  account_customizations_name = "sandbox"
//}

module "aft_test_one" {
  source = "./modules/aft-account-request"

  control_tower_parameters = {
    AccountEmail              = "schneidersoft+afttone@ukr.net"
    AccountName               = "aft-test-one"
    ManagedOrganizationalUnit = "Sandbox"
    SSOUserEmail              = "schneidersoft+afttone@ukr.net"
    SSOUserFirstName          = "AFT_test"
    SSOUserLastName           = "One"
  }

  account_tags = {
    "Learn Tutorial" = "AFT test one"
  }

  change_management_parameters = {
    change_requested_by = "AFT"
    change_reason       = "AFT test one testing"
  }

  custom_fields = {
    group = "non-prod"
  }

  account_customizations_name = "aft_test_one"
}
