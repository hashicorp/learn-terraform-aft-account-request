module "elp-fld-stg" {
  source = "./modules/aft-account-request"

  control_tower_parameters = {
    AccountEmail              = "aws+elp-fld-stg@elpassion.pl"
    AccountName               = "elp-fld-stg"
    ManagedOrganizationalUnit = "Internal"
    SSOUserEmail              = "jakub.andrzejewski@elpassion.pl"
    SSOUserFirstName          = "Jakub"
    SSOUserLastName           = "Andrzejewski"
  }

  account_tags = {
    Project = "flounder"
  }

  change_management_parameters = {
    change_requested_by = "Jakub Andrzejewski"
    change_reason       = "flounder staging"
  }

  account_customizations_name = "project"
}
