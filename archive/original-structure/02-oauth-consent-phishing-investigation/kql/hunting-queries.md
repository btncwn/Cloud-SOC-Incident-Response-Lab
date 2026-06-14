# OAuth Consent Hunting Queries

## Hunt 01 - Application Creation

```kql
AuditLogs
| where OperationName contains "application"
| project TimeGenerated, OperationName, Result, InitiatedBy, TargetResources
| sort by TimeGenerated desc
```

## Hunt 02 - Service Principal Creation

```kql
AuditLogs
| where OperationName == "Add service principal"
| project TimeGenerated, OperationName, Result, InitiatedBy, TargetResources
| sort by TimeGenerated desc
```

## Hunt 03 - Permission Grants

```kql
AuditLogs
| where OperationName contains "consent"
or OperationName contains "permission"
| project TimeGenerated, OperationName, Result, InitiatedBy, TargetResources
| sort by TimeGenerated desc
```

## Hunt 04 - Application Credential Creation

```kql
AuditLogs
| where OperationName contains "password credential"
or OperationName contains "certificate"
| project TimeGenerated, OperationName, Result, InitiatedBy, TargetResources
| sort by TimeGenerated desc
```

