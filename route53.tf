module "tf-route53" {
  source  = "app.terraform.io/telstra-nni-tony/tf-route53/hashicorp"
  version = "1.0.0"
  hosted_zone_name = "hashicorp.telstra.com"
  sub_domain = "testing"
  ips = ["10.100.100.23", "10.100.100.23"]
}