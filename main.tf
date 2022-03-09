module "deploy_nixos" {
  source = "github.com/mmmaxwwwell/terraform-nixos/deploy_nixos"
  nixos_config = "nixcfg/beacon/configuration.nix"
  ssh_agent = true
  target_user = "root"
  target_host = "example.com"
  delete_older_than = "+5"
}


