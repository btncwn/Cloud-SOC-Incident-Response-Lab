# Successful Authentication Investigation

## Objective

Investigate successful authentication activity in Microsoft Entra ID using Microsoft Sentinel.

## Scenario

A cloud identity account successfully authenticated to Microsoft Entra ID during a controlled lab exercise to validate cloud identity monitoring and log visibility.

## Data Sources

* Microsoft Entra ID
* Microsoft Sentinel
* SigninLogs

## Evidence

![Successful Sign-ins](screenshots/successful-signins.png)

### User

```text
entra.user01@scotistlimited.onmicrosoft.com
```

### Application

```text
OfficeHome
```

### Result Type

```text
0
```

### Authentication Result

```text
Successful Authentication
```

## KQL Query

```kql
SigninLogs
| where ResultType == 0
| project TimeGenerated,
          UserPrincipalName,
          AppDisplayName,
          ResultType
| sort by TimeGenerated desc
```

## Findings

Microsoft Sentinel successfully detected successful authentication activity for a cloud identity account.

The activity was visible through the SigninLogs table and identified using KQL hunting queries.

## MITRE ATT&CK Mapping

### T1078 - Valid Accounts

Attackers may use legitimate credentials to gain access to cloud resources.

## Analyst Assessment

The activity was generated during a controlled lab exercise.

No malicious activity was identified.

## Outcome

* SigninLogs ingestion validated
* Successful authentication monitoring validated
* Microsoft Sentinel detection validated
