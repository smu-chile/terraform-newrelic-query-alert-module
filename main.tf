//CONFIGURACION DE ALERTA EN NEW RELIC//

//Creación de politica de alerta//
resource "newrelic_alert_policy" "alertpolicylogs" {
  name                = var.newrelic_policyName
  incident_preference = "PER_CONDITION"
}

//Condición para ejecutar alerta//
resource "newrelic_nrql_alert_condition" "nrql_alert_condition" {
  account_id                   = var.account-id
  policy_id                    = newrelic_alert_policy.alertpolicylogs.id
  type                         = "static"
  name                         = var.alertName
  description                  = var.alertDescription
  runbook_url                  = var.runbookURL
  enabled                      = true
  violation_time_limit_seconds = 18000
  value_function               = "single_value"

  fill_option = "static"
  fill_value  = 0

  aggregation_window = 300

  nrql {
    query             = var.query
    evaluation_offset = 1
  }

  critical {
    operator              = var.criticalOperator
    threshold             = var.criticalThreshold
    threshold_duration    = var.criticalThresholdDuration
    threshold_occurrences = var.criticalThresholdOccurrences
  }
}


//Canal de alerta - email// 
resource "newrelic_alert_channel" "alert_chanel" {
  name = var.alert_channelName
  type = var.alert_channelType

  config {
    recipients              = var.alert_recipients
    include_json_attachment = "1"
  }
}


//Asociación de canal de alerta con política de alerta//
resource "newrelic_alert_policy_channel" "policy_channel" {
  policy_id   = newrelic_alert_policy.alertpolicylogs.id
  channel_ids = [newrelic_alert_channel.alert_chanel.id]
}

