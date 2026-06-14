# Privileged Group Owner Assignment Investigation

## Objective

Investigate privileged group ownership changes in Microsoft Entra ID using Microsoft Sentinel Audit Logs.

## Scenario

A cloud identity account was assigned ownership permissions on an Entra ID security group during a controlled lab exercise to validate AuditLogs ingestion and identity governance monitoring.

## Data Sources

* Microsoft Entra ID
* Microsoft Sentinel
* AuditLogs

## Evidence

![Group Owner Assignment](screenshots/add-owner-to-group.png)

### Operation

```text
Add owner to group
```

### Category

```text
GroupManagement
```

### Initiated By

```text
TurhanAcar@ScotistLimited.onmicrosoft.com
```

### Event Source

```text
AuditLogs
```

## KQL Query

```kql
AuditLogs
| where OperationName == "Add owner to group"
| project TimeGenerated,
          OperationName,
          InitiatedBy,
          TargetResources
| sort by TimeGenerated desc
```

## Findings

Microsoft Sentinel successfully detected a privileged group ownership change through the AuditLogs table.

The event demonstrated visibility into administrative actions affecting identity governance and access management.

## MITRE ATT&CK Mapping

### T1098 - Account Manipulation

Attackers may modify account permissions, ownership, or access rights to maintain access or elevate privileges.

## Analyst Assessment

The activity was initiated by an authorized administrator account during a controlled lab exercise.

No indicators of unauthorized access, privilege abuse, or malicious activity were identified.

## Outcome

* AuditLogs ingestion validated
* Identity governance monitoring validated
* Microsoft Sentinel detection validated
* KQL hunting validated
