# Cloud SOC Incident Response Lab

## Overview

Cloud SOC Incident Response Lab is a hands-on Microsoft Sentinel and Microsoft Entra ID security monitoring project designed to simulate real-world cloud security operations. The lab focuses on identity monitoring, threat detection, investigation workflows, detection engineering, and security automation using Microsoft Sentinel, Log Analytics, KQL, Azure CLI, and Microsoft Entra ID telemetry.

The project demonstrates practical cloud security skills through real investigation scenarios, KQL hunting queries, analytics rule development, MITRE ATT&CK mapping, and automation pipelines.

## Technologies Used

* Microsoft Sentinel
* Microsoft Entra ID (Azure AD)
* Log Analytics Workspace
* Kusto Query Language (KQL)
* Azure CLI
* Microsoft Defender Portal
* MITRE ATT&CK Framework
* GitHub

---

## Investigations

### 01 Failed Authentication Investigation

Investigated failed cloud authentication attempts using Microsoft Sentinel SigninLogs. Identified failed login activity, analyzed authentication outcomes, and documented investigation findings.

### 02 Successful Authentication Investigation

Validated successful user authentication activity through Microsoft Sentinel. Investigated sign-in events, authentication methods, and access patterns.

### 03 Privileged Group Owner Assignment

Investigated privileged group ownership changes using Microsoft Entra ID Audit Logs. Documented ownership assignment activity and security implications.

### 04 KQL Hunting Queries

Developed and executed KQL hunting queries against cloud identity telemetry to identify authentication activity, application management events, and potential security anomalies.

### 05 Sentinel Analytics Rules

Created custom Microsoft Sentinel analytics rules to support cloud security monitoring and alert generation.

### 06 MITRE ATT&CK Mapping

Mapped observed cloud identity activities and investigation findings to relevant MITRE ATT&CK techniques and tactics.

### 07 OAuth Consent Phishing Investigation

Investigated OAuth application consent activity and delegated permission grants using Microsoft Entra ID Audit Logs. Demonstrated detection opportunities for OAuth consent phishing attacks and unauthorized application access.

### 08 Service Principal Abuse Investigation

Investigated service principal management activity, application changes, and credential-related operations using Microsoft Entra ID Audit Logs. Demonstrated visibility into non-human identity activity and cloud persistence techniques.

### 09 Sentinel Log Export Pipeline

Built an Azure CLI automation pipeline to query Microsoft Sentinel telemetry directly from macOS using Log Analytics and KQL. Exported SigninLogs data for automation, reporting, and future AI-assisted analysis workflows.

---

## Automation Pipeline

The project includes automation scripts that interact directly with Microsoft Sentinel and Log Analytics through Azure CLI.

Pipeline Workflow:

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

This demonstrates how cloud security telemetry can be collected and integrated into future detection engineering and security automation workflows.

---

## Skills Demonstrated

* Cloud Security Monitoring
* Security Operations (SOC)
* Incident Response
* Threat Hunting
* Detection Engineering
* KQL Query Development
* Microsoft Sentinel
* Microsoft Entra ID Security
* Identity and Access Management (IAM)
* MITRE ATT&CK Mapping
* Security Automation
* Azure CLI

---

## Key Outcomes

* Investigated real Microsoft Sentinel telemetry
* Developed custom KQL hunting queries
* Built cloud identity security investigations
* Mapped detections to MITRE ATT&CK
* Created Sentinel analytics rules
* Automated log exports using Azure CLI
* Documented investigation findings and evidence

This project demonstrates practical cloud SOC analyst, incident response, threat hunting, and detection engineering skills using Microsoft Sentinel and Microsoft Entra ID.
