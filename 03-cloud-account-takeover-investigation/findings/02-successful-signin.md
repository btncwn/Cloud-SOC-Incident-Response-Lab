# Successful Sign-In Investigation

## Summary

Microsoft Sentinel detected successful authentication activity for a cloud identity account within the Microsoft Entra ID environment.

## Investigation Details

**User**

```text
entra.user01@scotistlimited.onmicrosoft.com
```

**Application**

```text
OfficeHome
```

**Result Type**

```text
0
```

**Authentication Result**

```text
Successful Sign-In
```

**Source**

```text
Microsoft Entra ID
Microsoft Sentinel
```

## KQL Query

```kql
SigninLogs
| where ResultType == 0
| project TimeGenerated,
          UserPrincipalName,
          AppDisplayName,
          ResultType,
          ResultDescription,
          IPAddress,
          Location
| sort by TimeGenerated desc
```

## Findings

Multiple successful sign-in events were observed for the account:

```text
entra.user01@scotistlimited.onmicrosoft.com
```

The sign-ins originated from the United Kingdom and were recorded within the Microsoft Entra ID SigninLogs table.

The activity was generated as part of a controlled cloud identity security monitoring exercise designed to validate Microsoft Sentinel log ingestion and authentication monitoring capabilities.

## MITRE ATT&CK Mapping

### Tactic

```text
Initial Access
Valid Accounts
```

### Technique

```text
T1078 - Valid Accounts
```

## Outcome

Microsoft Sentinel successfully ingested and displayed successful authentication events from Microsoft Entra ID.

The investigation confirmed visibility into cloud identity authentication activity and validated the SigninLogs data source for future threat hunting and incident response activities.

