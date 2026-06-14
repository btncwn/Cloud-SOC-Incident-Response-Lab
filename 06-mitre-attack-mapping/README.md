# MITRE ATT&CK Mapping

This section maps observed Microsoft Entra ID activity to the MITRE ATT&CK framework.

Only techniques validated through real Microsoft Sentinel telemetry are included.

---

# Investigation 01 - Failed Authentication Activity

## Activity Observed

Multiple failed authentication attempts against a cloud identity account.

## Data Source

* Microsoft Sentinel
* SigninLogs

## ATT&CK Mapping

### Tactic

Credential Access

### Technique

T1110 - Brute Force

## Evidence

```text
ResultType: 50126
Invalid username or password
```

---

# Investigation 02 - Successful Authentication Activity

## Activity Observed

Successful authentication activity against a cloud identity account.

## Data Source

* Microsoft Sentinel
* SigninLogs

## ATT&CK Mapping

### Tactic

Initial Access

### Technique

T1078 - Valid Accounts

## Evidence

```text
ResultType: 0
Successful Authentication
```

---

# Investigation 03 - Privileged Group Owner Assignment

## Activity Observed

Ownership permissions assigned to an Entra ID security group.

## Data Source

* Microsoft Sentinel
* AuditLogs

## ATT&CK Mapping

### Tactic

Privilege Escalation

Persistence

### Technique

T1098 - Account Manipulation

## Evidence

```text
Operation: Add owner to group
Category: GroupManagement
```

---

# Summary

| Investigation             | ATT&CK Technique |
| ------------------------- | ---------------- |
| Failed Authentication     | T1110            |
| Successful Authentication | T1078            |
| Group Owner Assignment    | T1098            |

---

# Validation Status

All ATT&CK mappings are based on real Microsoft Sentinel telemetry generated and investigated within the lab environment.
