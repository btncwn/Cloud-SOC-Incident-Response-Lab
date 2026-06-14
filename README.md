# Cloud SOC Incident Response Lab

## Overview

Cloud SOC Incident Response Lab is a hands-on Microsoft Sentinel and Microsoft Entra ID security monitoring project focused on cloud identity investigations, threat hunting, detection engineering, and security automation.

Technologies used:

- Microsoft Sentinel
- Microsoft Entra ID
- Log Analytics
- KQL
- Azure CLI
- Microsoft Defender Portal
- MITRE ATT&CK

---

## 01 Failed Authentication Investigation

Investigated failed authentication attempts using Microsoft Sentinel SigninLogs.

![Failed Authentication Investigation](01-failed-authentication-investigation/screenshots/failed-signins.png)

---

## 02 Successful Authentication Investigation

Validated successful cloud authentication events using Microsoft Sentinel.

![Successful Authentication Investigation](02-successful-authentication-investigation/screenshots/successful-signins.png)

---

## 03 Privileged Group Owner Assignment

Investigated privileged group ownership changes using Microsoft Entra ID Audit Logs.

![Privileged Group Owner Assignment](03-privileged-group-owner-assignment/screenshots/add-owner-to-group.png)

---

## 04 KQL Hunting Queries

Developed and executed KQL hunting queries against Microsoft Sentinel telemetry.

![KQL Hunting Queries](04-kql-hunting-queries/screenshots/application-management-hunt.png)

---

## 05 Sentinel Analytics Rules

Created custom Microsoft Sentinel analytics rules to support detection engineering and automated alert generation.

---

## 06 MITRE ATT&CK Mapping

Mapped observed cloud identity activity to MITRE ATT&CK techniques including Valid Accounts, Account Manipulation, and OAuth access token abuse.

---

## 07 OAuth Consent Phishing Investigation

Investigated OAuth consent activity and delegated permission grants using Microsoft Entra ID Audit Logs.

![OAuth Consent Phishing Investigation](07-oauth-consent-phishing-investigation/oauth-consent-phishing-investigation.png)

---

## 08 Service Principal Abuse Investigation

Investigated service principal management activity and non-human identity operations using Microsoft Entra ID Audit Logs.

![Service Principal Abuse Investigation](08-service-principal-abuse-investigation/service-principal-abuse-investigation.png)

---

## 09 Sentinel Log Export Pipeline

Built an Azure CLI automation pipeline to query Microsoft Sentinel and export telemetry from Log Analytics to macOS.

![Sentinel Log Export Pipeline](09-sentinel-log-export-pipeline/sentinel-log-export-pipeline.png)

---

## Automation Pipeline

Custom Azure CLI automation scripts:

```text
defender-pipeline/
├── export-defender-incidents.sh
└── export-failed-signins.sh
Pipeline flow:
Microsoft Sentinel
↓
Log Analytics
↓
KQL Query
↓
Azure CLI
↓
macOS
↓
JSON Export
Skills Demonstrated
Cloud Security Monitoring
SOC Investigation
Incident Response
Threat Hunting
Detection Engineering
Microsoft Sentinel
Microsoft Entra ID
KQL
Azure CLI
Security Automation
MITRE ATT&CK Mapping 
