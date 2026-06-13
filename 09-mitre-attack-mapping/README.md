# MITRE ATT&CK Mapping

## Overview

This document maps cloud identity attack scenarios covered within the Cloud-SOC-Incident-Response-Lab to the MITRE ATT&CK framework.

The objective is to demonstrate detection engineering, cloud incident response, and identity security coverage.

---

# Project Coverage

| Project                                       | ATT&CK Technique | Description                           |
| --------------------------------------------- | ---------------- | ------------------------------------- |
| Entra ID Identity Attack Investigation        | T1136            | Create Account                        |
| Entra ID Identity Attack Investigation        | T1098            | Account Manipulation                  |
| Entra ID Identity Attack Investigation        | T1556            | Modify Authentication Process         |
| OAuth Consent Phishing Investigation          | T1528            | Steal Application Access Token        |
| OAuth Consent Phishing Investigation          | T1098            | Account Manipulation                  |
| Cloud Account Takeover Investigation          | T1110            | Brute Force                           |
| Cloud Account Takeover Investigation          | T1078            | Valid Accounts                        |
| Cloud Account Takeover Investigation          | T1556            | Modify Authentication Process         |
| Service Principal Compromise Investigation    | T1136            | Create Account                        |
| Service Principal Compromise Investigation    | T1550            | Use Alternate Authentication Material |
| Service Principal Compromise Investigation    | T1078            | Valid Accounts                        |
| Cloud RBAC Privilege Escalation Investigation | T1098            | Account Manipulation                  |
| Cloud RBAC Privilege Escalation Investigation | T1068            | Exploitation for Privilege Escalation |
| Cloud RBAC Privilege Escalation Investigation | T1078            | Valid Accounts                        |

---

# ATT&CK Coverage Summary

## Initial Access

* T1110 - Brute Force

## Persistence

* T1136 - Create Account
* T1098 - Account Manipulation
* T1550 - Use Alternate Authentication Material

## Privilege Escalation

* T1068 - Exploitation for Privilege Escalation
* T1098 - Account Manipulation

## Defense Evasion

* T1078 - Valid Accounts

## Credential Access

* T1556 - Modify Authentication Process

## Cloud

* T1528 - Steal Application Access Token

---

# Detection Engineering Coverage

The repository includes:

* KQL Hunting Queries
* Microsoft Sentinel Analytics Rules
* Incident Reports
* MITRE ATT&CK Mapping
* Identity Security Investigations
* OAuth Investigations
* Non-Human Identity Security
* Cloud RBAC Monitoring

---

# Analyst Assessment

Identity remains the primary security boundary in modern cloud environments.

This repository focuses on detecting and investigating identity-centric attack techniques affecting Microsoft Entra ID, OAuth applications, service principals, cloud authentication, and Azure RBAC.

