# Failed Sign-In Investigation

## Summary

Microsoft Sentinel detected multiple failed authentication attempts against a cloud identity account.

## Investigation Details

User:

```text
entra.user01@scotistlimited.onmicrosoft.com
```

Application:

```text
OfficeHome
```

Result Type:

```text
50126
```

Description:

```text
Error validating credentials due to invalid username or password.
```

## KQL Query

```kql
SigninLogs
| where ResultType != 0
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

Five failed sign-in attempts were observed against the target account.

The activity was generated as part of a controlled identity attack simulation designed to validate Microsoft Sentinel detection capabilities.

## MITRE ATT&CK

Technique:

```text
T1110 - Brute Force
```

Tactic:

```text
Credential Access
```

## Outcome

Microsoft Sentinel successfully ingested and detected failed authentication events from Microsoft Entra ID.
