# Microsoft Sentinel Analytics Rules

## Overview

This section contains Microsoft Sentinel analytics rules developed from cloud identity attack investigations.

The objective is to convert hunting logic into alerting logic capable of identifying suspicious identity activity.

## Covered Scenarios

* New user creation
* Group membership modification
* Service principal creation
* Security information registration
* OAuth consent activity
* Azure RBAC role assignment changes

## Detection Workflow

Investigation

↓

KQL Hunting Query

↓

Analytics Rule

↓

Alert

↓

Incident

↓

SOC Investigation

## MITRE ATT&CK Coverage

| Detection                  | ATT&CK |
| -------------------------- | ------ |
| New User Creation          | T1136  |
| Group Membership Change    | T1098  |
| Service Principal Creation | T1136  |
| Security Info Registration | T1556  |
| OAuth Consent Abuse        | T1528  |
| RBAC Privilege Escalation  | T1098  |

## Analyst Notes

Analytics rules should be tuned to reduce false positives while maintaining visibility into high-risk identity activity.

