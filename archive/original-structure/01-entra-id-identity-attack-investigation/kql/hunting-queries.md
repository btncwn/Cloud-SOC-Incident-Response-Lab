# KQL Hunting Queries

## 1. New User Creation

```kql
AuditLogs
| where OperationName == "Add user"
| project TimeGenerated, OperationName, Result, InitiatedBy, TargetResources
| sort by TimeGenerated desc

2. Password Profile Changes

AuditLogs
| where OperationName has "PasswordProfile"
| project TimeGenerated, OperationName, Result, InitiatedBy, TargetResources
| sort by TimeGenerated desc

3. Service Principal Creation


AuditLogs
| where OperationName == "Add service principal"
| project TimeGenerated, OperationName, Result, ResultDescription, InitiatedBy, TargetResources
| sort by TimeGenerated desc


4. Failed Service Principal Creation

AuditLogs
| where OperationName == "Add service principal"
| where Result == "failure" or Result == "Failure"
| project TimeGenerated, OperationName, Result, ResultDescription, InitiatedBy, TargetResources
| sort by TimeGenerated desc

5. Security Information Registration

AuditLogs
| where OperationName has "registered security info"
| project TimeGenerated, OperationName, Result, InitiatedBy, TargetResources
| sort by TimeGenerated desc
