# Analytics Rule 01 - New User Creation

## Objective

Generate an alert when a new user account is created.

## Severity

Medium

## ATT&CK Mapping

T1136 - Create Account

## KQL

```kql
AuditLogs
| where OperationName == "Add user"
```

## Alert Logic

Trigger an alert whenever a new user account is created within Microsoft Entra ID.

## Triage Questions

* Who created the account?
* Was the creation approved?
* Was MFA configured?
* Were privileged roles assigned?

