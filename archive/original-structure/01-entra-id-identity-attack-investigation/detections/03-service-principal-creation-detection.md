# Detection 03 - Service Principal Creation

## Objective

Detect creation of new service principals.

## Threat

Service principals are frequently abused for persistence and cloud privilege escalation.

## ATT&CK Mapping

T1136 - Create Account

T1098 - Account Manipulation

## KQL

```kql
AuditLogs
| where OperationName == "Add service principal"
| project TimeGenerated, OperationName, Result, InitiatedBy, TargetResources
| sort by TimeGenerated desc
```

## Expected Alert

A new service principal is created.

## Triage Questions

- Who created the service principal?
- Which application is associated with it?
- Were credentials created?
- Were privileged roles assigned?
