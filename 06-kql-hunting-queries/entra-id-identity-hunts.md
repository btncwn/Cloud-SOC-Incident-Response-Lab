# Entra ID Identity Hunting Queries

## Overview

This document contains KQL hunting queries used to identify suspicious identity activity within Microsoft Entra ID.

---

# Hunt 01 - New User Creation

## Objective

Identify newly created user accounts.

## MITRE ATT&CK

T1136 - Create Account

## KQL

```kql
AuditLogs
| where OperationName == "Add user"
| project TimeGenerated, OperationName, Result, InitiatedBy, TargetResources
| sort by TimeGenerated desc
```

## Analyst Notes

Review the initiating account and determine whether the new account was approved and expected.

---

# Hunt 02 - Group Membership Changes

## Objective

Identify users added to privileged groups.

## MITRE ATT&CK

T1098 - Account Manipulation

## KQL

```kql
AuditLogs
| where OperationName contains "Add member to group"
| project TimeGenerated, OperationName, Result, InitiatedBy, TargetResources
| sort by TimeGenerated desc
```

## Analyst Notes

Review whether the group grants elevated permissions and whether the change was approved.

---

# Hunt 03 - Service Principal Creation

## Objective

Identify creation of new service principals.

## MITRE ATT&CK

T1136 - Create Account

T1098 - Account Manipulation

## KQL

```kql
AuditLogs
| where OperationName == "Add service principal"
| project TimeGenerated, OperationName, Result, InitiatedBy, TargetResources
| sort by TimeGenerated desc
```

## Analyst Notes

Service principals represent non-human identities and should be reviewed carefully.

---

# Hunt 04 - Failed Service Principal Creation

## Objective

Identify repeated failed attempts to create service principals.

## MITRE ATT&CK

T1098 - Account Manipulation

## KQL

```kql
AuditLogs
| where OperationName == "Add service principal"
| where Result =~ "failure"
| project TimeGenerated, OperationName, Result, ResultDescription, InitiatedBy, TargetResources
| sort by TimeGenerated desc
```

## Analyst Notes

Repeated failures may indicate misconfiguration, testing activity, or unauthorized application deployment attempts.

---

# Hunt 05 - Security Information Registration

## Objective

Identify registration of MFA or authentication information.

## MITRE ATT&CK

T1556 - Modify Authentication Process

## KQL

```kql
AuditLogs
| where OperationName contains "registered security info"
| project TimeGenerated, OperationName, Result, InitiatedBy, TargetResources
| sort by TimeGenerated desc
```

## Analyst Notes

Review whether the registration was performed by the legitimate user and whether additional authentication methods were added.

```
```

