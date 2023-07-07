resource "aws_accessanalyzer_analyzer" "default" {
  analyzer_name = var.name
  type          = var.type
  tags          = var.tags
}
