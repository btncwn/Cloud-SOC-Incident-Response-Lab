# Service Principal Compromise Hunting Queries

## Hunt 01 - Service Principal Creation

```kql
AuditLogs
| where OperationName == "Add service principal"
| project TimeGenerated,
          OperationName,
          Result,
          ResultDescription,
          InitiatedBy,
          TargetResources
| sort by TimeGenerated desc
```

---

## Hunt 02 - Failed Service Principal Creation

```kql
AuditLogs
| where OperationName == "Add service principal"
| where Result =~ "failure"
| project TimeGenerated,
          OperationName,
          Result,
          ResultDescription,
          InitiatedBy,
          TargetResources
| sort by TimeGenerated desc
```

---

## Hunt 03 - Client Secret Creation

```kql
AuditLogs
| where OperationName contains "password credential"
   or OperationName contains "client secret"
   or OperationName contains "Add password"
| project TimeGenerated,
          OperationName,
          Result,
          InitiatedBy,
          TargetResources
| sort by TimeGenerated desc
```

---

## Hunt 04 - OAuth Permission Grants and Consent Activity

```kql
AuditLogs
| where OperationName contains "permission"
   or OperationName contains "consent"
   or OperationName contains "Grant"
| project TimeGenerated,
          OperationName,
          Result,
          InitiatedBy,
          TargetResources
| sort by TimeGenerated desc
```

---

## Hunt 05 - Service Principal Authentication Activity

```kql
AADServicePrincipalSignInLogs
| project TimeGenerated,
          ServicePrincipalName,
          AppId,
          IPAddress,
          ResultType,
          ResultDescription
| sort by TimeGenerated desc
```

