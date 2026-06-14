# Incident Report 02 - OAuth Consent Phishing Investigation

## Executive Summary

An OAuth application was registered within Microsoft Entra ID and associated service principal activity was observed. The investigation focused on identifying whether application consent could have been abused to gain unauthorized access to cloud resources.

## Incident Details

| Field              | Value              |
| ------------------ | ------------------ |
| Investigation Type | OAuth Abuse        |
| Platform           | Microsoft Entra ID |
| Severity           | High               |
| Status             | Closed             |
| Analyst            | Turhan Acar        |

## Timeline

| Time             | Event                            |
| ---------------- | -------------------------------- |
| Initial Activity | Application registration created |
| Initial Activity | Service principal created        |
| Investigation    | Permissions reviewed             |
| Investigation    | Consent activity reviewed        |

## Findings

### Finding 1

OAuth application registration observed.

ATT&CK:

T1528 - Steal Application Access Token

### Finding 2

Service principal creation observed.

ATT&CK:

T1136 - Create Account

### Finding 3

Potential permission grant activity reviewed.

ATT&CK:

T1098 - Account Manipulation

## Impact Assessment

No malicious activity identified. Activity was performed within the lab environment for cloud security investigation purposes.

## Detection Opportunities

* Application registration creation
* Service principal creation
* OAuth consent activity
* Permission grants

## Recommendations

* Restrict user consent permissions
* Review application registrations regularly
* Monitor OAuth consent events
* Alert on high-risk permissions

## Conclusion

The investigation demonstrated how OAuth abuse can provide attackers with persistent access without requiring credential theft.

