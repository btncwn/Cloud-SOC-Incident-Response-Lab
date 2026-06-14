# Detection 01 - OAuth Application Creation

## Objective

Detect creation of new OAuth applications within Microsoft Entra ID.

## Threat

Attackers frequently register malicious applications to obtain persistent access to cloud resources through delegated permissions.

## ATT&CK Mapping

T1528 - Steal Application Access Token

## KQL

```kql
AuditLogs
| where OperationName contains "application"
| project TimeGenerated, OperationName, Result, InitiatedBy, TargetResources
```

## Triage Questions

* Who created the application?
* Is the application approved?
* What permissions were requested?
* Was consent granted?
* Was a service principal created?


