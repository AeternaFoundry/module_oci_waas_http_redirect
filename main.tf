resource "oci_waas_http_redirect" "waas_http_redirects" {
  for_each = var.waas_http_redirects

  compartment_id = each.value.compartment_id
  domain         = each.value.domain
  defined_tags   = each.value.defined_tags
  display_name   = each.value.display_name
  freeform_tags  = each.value.freeform_tags
  response_code  = each.value.response_code

  target {
    host     = each.value.target.host
    path     = each.value.target.path
    port     = each.value.target.port
    protocol = each.value.target.protocol
    query    = each.value.target.query
  }

  dynamic "timeouts" {
    for_each = each.value.timeouts != null ? [each.value.timeouts] : []
    content {
      create = timeouts.value.create
      delete = timeouts.value.delete
      update = timeouts.value.update
    }
  }
}

