# Entra ID Identity Attack Investigation

## Scenario

This investigation examines identity administration activity in a Microsoft Entra ID lab tenant.

Observed activity included:

- New user creation
- Password profile changes
- Service principal creation
- Failed service principal creation attempts
- Security information registration

The objective was to review whether these activities represented normal administration, misconfiguration, or potential identity abuse.

## Environment

- Microsoft Entra ID
- Entra ID P2 trial tenant
- Microsoft Sentinel / KQL planned for detection development
- Cloud-only identity lab

## Key Findings

| Finding | Activity | Result | Risk |
|---|---|---|---|
| 01 | Add user | Success | Unauthorized account creation / persistence |
| 02 | Update PasswordProfile | Success | Account manipulation |
| 03 | Add service principal | Success | Non-human identity persistence |
| 04 | Add service principal | Failure | Suspicious repeated app/service principal activity |
| 05 | User registered security info | Success | MFA/security info manipulation |

## MITRE ATT&CK Mapping

| Activity | Technique |
|---|---|
| New user creation | T1136 - Create Account |
| Password profile update | T1098 - Account Manipulation |
| Service principal creation | T1136 - Create Account |
| Security info registration | T1556 - Modify Authentication Process |

## Investigation Questions

- Who initiated the identity changes?
- Were the users expected?
- Were service principals created by an authorized administrator?
- Why were there repeated service principal creation failures?
- Was security information registered by the legitimate user?
- Were any privileged roles assigned after these events?

## Response Actions

- Review initiating user for each event
- Validate newly created users
- Review service principal permissions
- Remove unused or suspicious service principals
- Review authentication method changes
- Enforce MFA and Conditional Access
- Monitor future user, group, app, and credential changes

## Status

Initial identity events generated and reviewed.
KQL hunting queries and detections will be added in the next phase.
