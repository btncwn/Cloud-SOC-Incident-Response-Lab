# Cloud Account Takeover Investigation

## Scenario

An attacker attempts to gain access to a Microsoft Entra ID account.

The attack sequence includes:

* Multiple failed authentication attempts
* Successful authentication
* Registration of additional authentication methods
* Potential persistence activity

The objective is to determine whether the account was compromised and identify appropriate containment actions.

## Attack Flow

Password Guessing

↓

Failed Sign-ins

↓

Successful Authentication

↓

Security Information Registration

↓

Persistence

↓

Potential Privilege Escalation

## Investigation Objectives

* Identify failed sign-in activity
* Identify successful authentication events
* Identify MFA or authentication method registration
* Determine whether the activity was legitimate
* Recommend containment actions

## MITRE ATT&CK Mapping

| Activity                      | Technique                             |
| ----------------------------- | ------------------------------------- |
| Password Guessing             | T1110 - Brute Force                   |
| Valid Accounts                | T1078 - Valid Accounts                |
| Modify Authentication Process | T1556 - Modify Authentication Process |
| Account Manipulation          | T1098 - Account Manipulation          |

## Response Actions

* Reset password
* Revoke active sessions
* Review authentication methods
* Review privileged role assignments
* Review recent application registrations
* Investigate service principal activity
* Enforce MFA

## Analyst Assessment

Cloud account takeover remains one of the most common attack paths in Microsoft Entra ID environments. Monitoring failed sign-ins, successful sign-ins, and authentication method changes provides valuable detection opportunities.

## Investigation Status

In Progress

