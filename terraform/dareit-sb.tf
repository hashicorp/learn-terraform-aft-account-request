module "elp-sb-dareit" {
  source = "./modules/aft-account-request"

  control_tower_parameters = {
    AccountEmail              = "aws+elp-sb-dareit@elpassion.pl"
    AccountName               = "elp-sb-dareit"
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
    change_reason       = "Demo"
  }

  account_customizations_name = "sandbox"
}
