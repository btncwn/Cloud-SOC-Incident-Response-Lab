# Analytics Rule 04 - Security Information Registration

## Objective

Detect MFA and authentication method registration activity.

## Severity

High

## ATT&CK Mapping

T1556 - Modify Authentication Process

## KQL

```kql
AuditLogs
| where OperationName contains "registered security info"
```

## Alert Logic

Trigger an alert when authentication methods are added or modified.

## Triage Questions

* Was the registration expected?
* Was the user recently compromised?
* Were multiple authentication methods added?

