# Detection 01 - New User Creation

## Objective

Detect creation of new user accounts within Microsoft Entra ID.

## Threat

Attackers frequently create new accounts after compromising privileged identities to establish persistence.

## ATT&CK Mapping

T1136 - Create Account

## KQL

```kql
AuditLogs
| where OperationName == "Add user"
| project TimeGenerated, OperationName, Result, InitiatedBy, TargetResources
| sort by TimeGenerated desc
```

## Expected Alert

A new user account is created within the tenant.

## Triage Questions

- Who created the account?
- Was the account approved?
- Was the account subsequently granted privileges?
- Was MFA configured?
