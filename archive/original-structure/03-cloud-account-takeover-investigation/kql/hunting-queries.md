# Cloud Account Takeover Hunting Queries

## Hunt 01 - Failed Sign-ins

```kql
SigninLogs
| where ResultType != 0
| project TimeGenerated, UserPrincipalName, IPAddress, ResultType, ResultDescription
| sort by TimeGenerated desc
```

## Hunt 02 - Successful Sign-ins

```kql
SigninLogs
| where ResultType == 0
| project TimeGenerated, UserPrincipalName, IPAddress, AppDisplayName
| sort by TimeGenerated desc
```

## Hunt 03 - Security Information Registration

```kql
AuditLogs
| where OperationName contains "registered security info"
| project TimeGenerated, OperationName, Result, InitiatedBy
| sort by TimeGenerated desc
```

## Hunt 04 - Successful Login After Multiple Failures

```kql
SigninLogs
| summarize FailedAttempts=countif(ResultType != 0),
            SuccessfulAttempts=countif(ResultType == 0)
            by UserPrincipalName
| where FailedAttempts > 3 and SuccessfulAttempts > 0
```


