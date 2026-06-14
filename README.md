# Cloud SOC Incident Response Lab

## Overview

This repository demonstrates cloud identity monitoring, threat hunting, detection engineering, and incident investigation using Microsoft Sentinel and Microsoft Entra ID.

The project focuses on generating real cloud identity events, collecting telemetry through Microsoft Sentinel, hunting activity with KQL, and documenting investigation findings using an analyst-driven workflow.

## Technologies

* Microsoft Sentinel
* Microsoft Entra ID
* Log Analytics Workspace
* KQL (Kusto Query Language)
* MITRE ATT&CK Framework

## Investigations

### 01 - Failed Authentication Investigation

Generated multiple failed sign-in attempts and investigated authentication failures through the SigninLogs table.

**ATT&CK:** T1110 - Brute Force

### 02 - Successful Authentication Investigation

Validated successful cloud authentication monitoring and visibility through Microsoft Sentinel.

**ATT&CK:** T1078 - Valid Accounts

### 03 - Privileged Group Owner Assignment Investigation

Investigated privileged ownership changes within Microsoft Entra ID using AuditLogs.

**ATT&CK:** T1098 - Account Manipulation

---

## Hunting Queries

The repository includes validated KQL hunting queries covering:

* Failed Authentication Activity
* Successful Authentication Activity
* Privileged Group Ownership Changes

---

## Sentinel Analytics Rules

Custom analytics rules were developed for:

* Multiple Failed Authentication Attempts
* Successful Authentication Monitoring
* Privileged Group Ownership Changes

---

## MITRE ATT&CK Mapping

Observed cloud identity events were mapped to:

* T1110 – Brute Force
* T1078 – Valid Accounts
* T1098 – Account Manipulation

---

## Key Skills Demonstrated

* Cloud Identity Monitoring
* Microsoft Sentinel Investigation
* KQL Threat Hunting
* Detection Engineering
* Identity Governance Monitoring
* Incident Documentation
* MITRE ATT&CK Mapping

---

## Future Investigations

Planned investigations include:

* OAuth Consent Phishing
* Service Principal Creation
* Client Secret Creation
* Privileged Role Assignment
* PIM Role Activation
* Cloud RBAC Escalation

## Author

Turhan Acar

Cyber Security Analyst | SOC Operations | Threat Hunting | Detection Engineering | Incident Response
