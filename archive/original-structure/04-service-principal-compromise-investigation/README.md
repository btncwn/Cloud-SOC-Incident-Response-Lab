# Service Principal Compromise Investigation

## Scenario

This investigation examines suspicious service principal activity within a Microsoft Entra ID tenant.

Service principals are non-human identities used by applications and automation. If compromised, they can allow attackers to access cloud resources without using a normal user account.

Observed activity included:

- Service principal creation
- Client secret creation
- Failed service principal creation attempts
- Potential persistence using non-human identity credentials

## Why This Matters

Service principals are high-value targets because they can be used for:

- Persistence
- Privilege escalation
- Resource access
- Automation abuse
- Secret-based authentication

Unlike normal users, service principals may not have MFA and can be overlooked during investigations.

## Investigation Objectives

- Identify service principal creation events
- Identify client secret or credential creation
- Review failed service principal creation attempts
- Determine who initiated the activity
- Review permissions assigned to the service principal
- Recommend containment and remediation actions

## Evidence Sources

- Microsoft Entra ID Audit Logs
- Microsoft Sentinel
- KQL hunting queries
- Application registration events
- Service principal credential events

## MITRE ATT&CK Mapping

| Activity | Technique |
|---|---|
| Service principal creation | T1136 - Create Account |
| Credential or secret creation | T1098 - Account Manipulation |
| Use of non-human identity | T1078 - Valid Accounts |
| Persistence through application identity | T1550 - Use Alternate Authentication Material |

## Response Actions

- Review who created the service principal
- Review assigned API permissions
- Review Azure RBAC role assignments
- Remove unnecessary client secrets
- Rotate exposed credentials
- Disable or delete suspicious service principals
- Review sign-in activity for service principals
- Apply least privilege access
- Monitor future credential creation events

## Analyst Assessment

Service principal compromise is a serious cloud identity risk. In this lab, service principal creation and credential activity are investigated as potential indicators of persistence or privilege escalation.

This project demonstrates non-human identity security, Entra ID investigation, KQL hunting, and cloud incident response.
