variable "account-id" {
  type        = string
  description = "New Relic Account Id for access"
}

variable "api-key" {
  type        = string
  description = "New Relic api Key for access"
}

variable "region" {
  type        = string
  description = "New Relic Region"
}

variable "newrelic_policyName" {
  type        = string
  description = "New Relic Alert Policy Name"
}

variable "alertName" {
  type        = string
  description = "New Relic Alert name"
}

variable "alertDescription" {
  type        = string
  description = "New Relic Alert Description"
}

variable "runbookURL" {
  type        = string
  description = "New Relic runbook URL"
}

variable "query" {
  type        = string
  description = "New Relic Query in NRQL"
}

variable "criticalOperator" {
  type = string
  description = "Operator for crtical alert"
}

variable "criticalThreshold" {
  type        = number
  description = "Threshold for crtical alert"
}

variable "criticalThresholdDuration" {
  type        = number
  description = "Threshold duration for crtical alert"
}

variable "criticalThresholdOccurrences" {
  type = string
  description = "Threshold occurrences for crtical alert"
}

variable "alert_channelName" {
  type        = string
  description = "Type of alert channel"
}

variable "alert_channelType" {
  type        = string
  description = "Name for alert channel"
}

variable "alert_recipients" {
  type        = string
  description = "Recipients for alert"
}

variable "alert_slackUrl" {
  type        = string
  description = "URL for webhook"
}

variable "alert_slackChannel" {
  type        = string
  description = "Slack Channel"
}
