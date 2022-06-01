module "aft_test_two" {
  source = "./modules/aft-account-request"

  control_tower_parameters = {
    AccountEmail              = "schneidersoft+aftttwo@ukr.net"
    AccountName               = "aft-test-two"
    ManagedOrganizationalUnit = "Sandbox"
    SSOUserEmail              = "schneidersoft+aftttwo@ukr.net"
    SSOUserFirstName          = "AFT_test"
    SSOUserLastName           = "Two"
  }

  account_tags = {
    "Learn Tutorial" = "AFT test two"
  }

  change_management_parameters = {
    change_requested_by = "AFT"
    change_reason       = "AFT test two testing"
  }

  custom_fields = {
    group = "non-prod"
  }

  account_customizations_name = "aft_test_two"
}