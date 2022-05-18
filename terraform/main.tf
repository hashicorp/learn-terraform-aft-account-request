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

module "first_acc" {
  source = "./modules/aft-account-request"

  control_tower_parameters = {
    AccountEmail              = "schneidersoft+b@ukr.net"
    AccountName               = "first-aft"
    ManagedOrganizationalUnit = "Sandbox"
    SSOUserEmail              = "schneidersoft+b@ukr.net"
    SSOUserFirstName          = "First"
    SSOUserLastName           = "AFT"
  }

  account_tags = {
    "Name" = "First AFT"
  }

  change_management_parameters = {
    change_requested_by = "first terraform apply"
    change_reason       = "first testing"
  }

  custom_fields = {
    group = "non-prod"
  }

  account_customizations_name = "first"
}

module "second_acc" {
  source = "./modules/aft-account-request"

  control_tower_parameters = {
    AccountEmail              = "schneidersoft+c@ukr.net"
    AccountName               = "second-aft"
    ManagedOrganizationalUnit = "Second (ou-oo78-rm73u2fh)"
    SSOUserEmail              = "schneidersoft+c@ukr.net"
    SSOUserFirstName          = "Second"
    SSOUserLastName           = "AFT"
  }

  account_tags = {
    "Name" = "Second AFT"
  }

  change_management_parameters = {
    change_requested_by = "second terraform apply"
    change_reason       = "second testing"
  }

  custom_fields = {
    group = "non-prod"
  }

  account_customizations_name = "second"
}
