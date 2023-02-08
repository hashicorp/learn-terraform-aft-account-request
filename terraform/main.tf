module "sandbox" {
  source = "./modules/aft-account-request"

  control_tower_parameters = {
    AccountEmail              = "aws+elp-sb-aft-test@elpassion.pl"
    AccountName               = "elp-sb-aft-test"
    ManagedOrganizationalUnit = "Sandbox"
    SSOUserEmail              = "jakub.andrzejewski@elpassion.pl"
    SSOUserFirstName          = "Jakub"
    SSOUserLastName           = "Andrzejewski"
  }

  account_tags = {
    Project = "AFT"
  }

  change_management_parameters = {
    change_requested_by = "Jakub Andrzejewski"
    change_reason       = "Testing AFT"
  }

  account_customizations_name = "sandbox"
}
