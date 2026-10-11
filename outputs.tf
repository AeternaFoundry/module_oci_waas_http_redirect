output "waas_http_redirects_id" {
  description = "Map of id values across all waas_http_redirects, keyed the same as var.waas_http_redirects except keys with no id are omitted"
  value       = { for k, v in oci_waas_http_redirect.waas_http_redirects : k => v.id if v.id != null && length(v.id) > 0 }
}
output "waas_http_redirects_compartment_id" {
  description = "Map of compartment_id values across all waas_http_redirects, keyed the same as var.waas_http_redirects except keys with no compartment_id are omitted"
  value       = { for k, v in oci_waas_http_redirect.waas_http_redirects : k => v.compartment_id if v.compartment_id != null && length(v.compartment_id) > 0 }
}
output "waas_http_redirects_defined_tags" {
  description = "Map of defined_tags values across all waas_http_redirects, keyed the same as var.waas_http_redirects except keys with no defined_tags are omitted"
  value       = { for k, v in oci_waas_http_redirect.waas_http_redirects : k => v.defined_tags if v.defined_tags != null && length(v.defined_tags) > 0 }
}
output "waas_http_redirects_display_name" {
  description = "Map of display_name values across all waas_http_redirects, keyed the same as var.waas_http_redirects except keys with no display_name are omitted"
  value       = { for k, v in oci_waas_http_redirect.waas_http_redirects : k => v.display_name if v.display_name != null && length(v.display_name) > 0 }
}
output "waas_http_redirects_domain" {
  description = "Map of domain values across all waas_http_redirects, keyed the same as var.waas_http_redirects except keys with no domain are omitted"
  value       = { for k, v in oci_waas_http_redirect.waas_http_redirects : k => v.domain if v.domain != null && length(v.domain) > 0 }
}
output "waas_http_redirects_freeform_tags" {
  description = "Map of freeform_tags values across all waas_http_redirects, keyed the same as var.waas_http_redirects except keys with no freeform_tags are omitted"
  value       = { for k, v in oci_waas_http_redirect.waas_http_redirects : k => v.freeform_tags if v.freeform_tags != null && length(v.freeform_tags) > 0 }
}
output "waas_http_redirects_response_code" {
  description = "Map of response_code values across all waas_http_redirects, keyed the same as var.waas_http_redirects except keys with no response_code are omitted"
  value       = { for k, v in oci_waas_http_redirect.waas_http_redirects : k => v.response_code if v.response_code != null }
}
output "waas_http_redirects_state" {
  description = "Map of state values across all waas_http_redirects, keyed the same as var.waas_http_redirects except keys with no state are omitted"
  value       = { for k, v in oci_waas_http_redirect.waas_http_redirects : k => v.state if v.state != null && length(v.state) > 0 }
}
output "waas_http_redirects_target" {
  description = "Map of target values across all waas_http_redirects, keyed the same as var.waas_http_redirects except keys with no target are omitted"
  value       = { for k, v in oci_waas_http_redirect.waas_http_redirects : k => one(v.target) if v.target != null && length(v.target) > 0 }
}
output "waas_http_redirects_time_created" {
  description = "Map of time_created values across all waas_http_redirects, keyed the same as var.waas_http_redirects except keys with no time_created are omitted"
  value       = { for k, v in oci_waas_http_redirect.waas_http_redirects : k => v.time_created if v.time_created != null && length(v.time_created) > 0 }
}

