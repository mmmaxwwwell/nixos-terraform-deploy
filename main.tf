module "deploy_nixos" {
  source = "github.com/mmmaxwwwell/terraform-nixos/deploy_nixos"
  #nixos_config = "nixcfg/beacon/configuration.nix"
  config = "nixcfg/beacon/configuration.nix.tpl"
  config_pwd = "nixcfg/beacon"
  ssh_agent = true
  target_user = var.beacon_target_user
  target_host = var.beacon_target_host
  target_port = var.beacon_target_port
  delete_older_than = "+5"
}


