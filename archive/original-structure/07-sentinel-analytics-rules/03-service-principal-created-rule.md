# Analytics Rule 03 - Service Principal Creation

## Objective

Generate an alert when a service principal is created.

## Severity

High

## ATT&CK Mapping

T1136 - Create Account

T1098 - Account Manipulation

## KQL

```kql
AuditLogs
| where OperationName == "Add service principal"
```

## Alert Logic

Trigger an alert whenever a new service principal is created.

## Triage Questions

* Who created it?
* Was a secret created?
* Were privileged permissions assigned?
* Was admin consent granted?

