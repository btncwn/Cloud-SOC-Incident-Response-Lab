# Cloud RBAC Privilege Escalation Hunting Queries

## Hunt 01 - Azure Role Assignment Created

```kql
AzureActivity
| where OperationNameValue contains "roleAssignments/write"
| project TimeGenerated, OperationNameValue, ActivityStatusValue, Caller, ResourceGroup, ResourceProviderValue, ResourceId
| sort by TimeGenerated desc
```

## Hunt 02 - Azure Role Assignment Deleted

```kql
AzureActivity
| where OperationNameValue contains "roleAssignments/delete"
| project TimeGenerated, OperationNameValue, ActivityStatusValue, Caller, ResourceGroup, ResourceProviderValue, ResourceId
| sort by TimeGenerated desc
```

## Hunt 03 - Failed Role Assignment Attempts

```kql
AzureActivity
| where OperationNameValue contains "roleAssignments/write"
| where ActivityStatusValue != "Success"
| project TimeGenerated, OperationNameValue, ActivityStatusValue, Caller, ResourceGroup, ResourceProviderValue, ResourceId
| sort by TimeGenerated desc
```

## Hunt 04 - Entra Directory Role Assignment Activity

```kql
AuditLogs
| where OperationName contains "Add member to role"
or OperationName contains "Add eligible member to role"
or OperationName contains "Add member to group"
| project TimeGenerated, OperationName, Result, InitiatedBy, TargetResources
| sort by TimeGenerated desc
```

## Hunt 05 - Privileged Identity and Group Changes

```kql
AuditLogs
| where OperationName contains "role"
or OperationName contains "privileged"
or OperationName contains "group"
| project TimeGenerated, OperationName, Result, InitiatedBy, TargetResources
| sort by TimeGenerated desc
```

