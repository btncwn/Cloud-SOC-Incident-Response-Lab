# Analytics Rule 02 - Group Membership Change

## Objective

Generate an alert when a user is added to a group.

## Severity

High

## ATT&CK Mapping

T1098 - Account Manipulation

## KQL

```kql
AuditLogs
| where OperationName contains "Add member to group"
```

## Alert Logic

Trigger an alert when membership changes occur in security groups.

## Triage Questions

* Which group was modified?
* Is the group privileged?
* Was the change approved?

