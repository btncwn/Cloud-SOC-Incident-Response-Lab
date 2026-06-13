# Analytics Rule 06 - Azure RBAC Role Assignment Change

## Objective

Detect Azure role assignment modifications.

## Severity

High

## ATT&CK Mapping

T1098 - Account Manipulation

## KQL

```kql
AzureActivity
| where OperationNameValue contains "roleAssignments/write"
```

## Alert Logic

Generate an alert when Azure RBAC assignments are created or modified.

## Triage Questions

* Who initiated the assignment?
* Which role was granted?
* What scope was affected?
* Was the assignment approved?

