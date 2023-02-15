module "elp-sb-aftpredemo" {
  source = "./modules/aft-account-request"

  control_tower_parameters = {
    AccountEmail              = "aws+elp-sb-aftpredemo@elpassion.pl"
    AccountName               = "elp-sb-aftpredemo"
    ManagedOrganizationalUnit = "Sandbox"
    SSOUserEmail              = "jakub.andrzejewski@elpassion.pl"
    SSOUserFirstName          = "Jakub"
    SSOUserLastName           = "Andrzejewski"
  }

  account_tags = {
    Project = "AFT"
    Test = "yes"
  }

  change_management_parameters = {
    change_requested_by = "Jakub Andrzejewski"
    change_reason       = "Testing AFT"
  }

  account_customizations_name = "sandbox"
}
