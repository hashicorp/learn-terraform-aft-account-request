module "elp-flounder-stg" {
  source = "./modules/aft-account-request"

  control_tower_parameters = {
    AccountEmail              = "aws+elp-flounder-stg@elpassion.pl"
    AccountName               = "elp-flounder-stg"
    ManagedOrganizationalUnit = "Internal"
    SSOUserEmail              = "pawel.sierant@elpassion.pl"
    SSOUserFirstName          = "Paweł"
    SSOUserLastName           = "Sierant"
  }

  account_tags = {
    Project = "flounder"
  }

  change_management_parameters = {
    change_requested_by = "Paweł Sierant"
    change_reason       = "flounder staging"
  }

  account_customizations_name = "project"
}
