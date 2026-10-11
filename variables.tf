variable "waas_http_redirects" {
  description = <<EOT
Map of waas_http_redirects, attributes below
Required:
    - compartment_id
    - domain
    - target (block):
        - host (required)
        - path (required)
        - port (optional)
        - protocol (required)
        - query (required)
Optional:
    - defined_tags
    - display_name
    - freeform_tags
    - response_code
    - timeouts (block):
        - create (optional)
        - delete (optional)
        - update (optional)
EOT

  type = map(object({
    compartment_id = string
    domain         = string
    defined_tags   = optional(map(string))
    display_name   = optional(string)
    freeform_tags  = optional(map(string))
    response_code  = optional(number)
    target = object({
      host     = string
      path     = string
      port     = optional(number)
      protocol = string
      query    = string
    })
    timeouts = optional(object({
      create = optional(string)
      delete = optional(string)
      update = optional(string)
    }))
  }))
}

