# OAuth Consent Phishing Investigation

## Scenario

A user receives a phishing email containing a link to a malicious Microsoft Entra application.

The user is redirected to a legitimate Microsoft authentication page and presented with an OAuth consent prompt.

The user approves the application without understanding the permissions being requested.

The application gains access to organizational resources without requiring password theft.

## Attack Flow

Phishing Email

↓

OAuth Consent Prompt

↓

User Grants Permissions

↓

Application Registration

↓

Service Principal Creation

↓

Access to User Data

↓

Persistence

## Investigation Objectives

* Identify OAuth application creation activity
* Identify service principal creation events
* Review granted permissions
* Determine whether consent was authorized
* Assess potential impact
* Recommend containment actions

## MITRE ATT&CK Mapping

| Activity                   | Technique |
| -------------------------- | --------- |
| OAuth Application Abuse    | T1528     |
| Service Principal Creation | T1136     |
| Account Manipulation       | T1098     |
| Cloud Persistence          | T1078     |

## Potential Impact

* Mailbox access
* SharePoint access
* Teams access
* Directory reconnaissance
* Long-term persistence

## Response Actions

* Review application permissions
* Revoke user consent
* Disable malicious application
* Remove service principal
* Reset affected accounts
* Review sign-in activity
* Investigate additional persistence mechanisms

## Analyst Assessment

OAuth consent attacks are particularly dangerous because they can bypass traditional credential theft detection methods. Monitoring application creation, service principal creation, and consent activity is critical in cloud environments.

