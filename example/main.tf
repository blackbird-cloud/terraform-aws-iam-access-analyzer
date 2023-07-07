module "accessanalyzer_analyzer" {
  source  = "blackbird-cloud/iam-access-analyzer"
  version = "~> 1"

  name = "my-access-analyzer"
  type = "ORGANIZATION"
  tags = {
    my-tag = "my-tag"
  }
}
