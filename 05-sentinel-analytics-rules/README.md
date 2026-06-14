# Microsoft Sentinel Analytics Rules

This section documents Microsoft Sentinel analytics rules derived from validated cloud identity investigations.

Only rules based on observed Microsoft Entra ID activity are included.

---

# Rule 01 - Multiple Failed Authentication Attempts

## Objective

Detect repeated failed authentication attempts against cloud identity accounts.

## Data Source

SigninLogs

## KQL Query

```kql
SigninLogs
| where ResultType != 0
| summarize FailedAttempts=count() by UserPrincipalName, IPAddress
| where FailedAttempts >= 3
```

## Severity

Medium

## MITRE ATT&CK

T1110 - Brute Force

## Expected Outcome

Generate an alert when multiple failed authentication attempts are observed against a user account.

---

# Rule 02 - Successful Authentication Activity

## Objective

Provide visibility into successful authentication events.

## Data Source

SigninLogs

## KQL Query

```kql
SigninLogs
| where ResultType == 0
```

## Severity

Informational

## MITRE ATT&CK

T1078 - Valid Accounts

## Expected Outcome

Provide monitoring visibility for successful cloud authentication activity.

---

# Rule 03 - Privileged Group Ownership Changes

## Objective

Detect ownership changes affecting Entra ID security groups.

## Data Source

AuditLogs

## KQL Query

```kql
AuditLogs
| where OperationName == "Add owner to group"
```

## Severity

High

## MITRE ATT&CK

T1098 - Account Manipulation

## Expected Outcome

Generate an alert when ownership permissions are assigned to an Entra ID security group.

---

# Rule 04 - Application Credential Changes

## Objective

Detect application and service principal modifications related to certificate and client secret management.

## Data Source

AuditLogs

## KQL Query

```kql
AuditLogs
| where Category == "ApplicationManagement"
| where OperationName has_any (
    "Update application",
    "Update application – Certificates and secrets management",
    "Update service principal"
)
```

## Severity

High

## MITRE ATT&CK

T1098 - Account Manipulation

T1550 - Use Alternate Authentication Material

## Expected Outcome

Generate an alert when application credentials, certificates, secrets, or service principal objects are modified.

# Validation Status

The underlying events for these rules were generated and validated using Microsoft Sentinel and Microsoft Entra ID telemetry within the lab environment.
