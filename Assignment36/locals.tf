locals {
  common_tags = {
    company            = var.company
    project            = "${var.company}-${var.project}"
    billing_department = var.billing_department
    owner              = var.owner
  }
}