module "elp-mgmt-dns" {
  source = "./modules/aft-account-request"

  control_tower_parameters = {
    AccountEmail              = "aws+elp-mgmt-dns@elpassion.pl"
    AccountName               = "elp-mgmt-dns"
    ManagedOrganizationalUnit = "Management"
    SSOUserEmail              = "jakub.andrzejewski@elpassion.pl"
    SSOUserFirstName          = "Jakub"
    SSOUserLastName           = "Andrzejewski"
  }

  account_tags = {
    Project = "DNS"
  }

  change_management_parameters = {
    change_requested_by = "Jakub Andrzejewski"
    change_reason       = "Central DNS Account"
  }

  account_customizations_name = "management"
}
