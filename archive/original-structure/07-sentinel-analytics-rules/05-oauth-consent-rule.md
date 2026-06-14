# Analytics Rule 05 - OAuth Consent Activity

## Objective

Detect OAuth permission grants and consent activity.

## Severity

High

## ATT&CK Mapping

T1528 - Steal Application Access Token

## KQL

```kql
AuditLogs
| where OperationName contains "consent"
or OperationName contains "permission"
```

## Alert Logic

Generate an alert when new OAuth permissions are granted.

## Triage Questions

* Which application received consent?
* Which permissions were granted?
* Was admin consent used?

