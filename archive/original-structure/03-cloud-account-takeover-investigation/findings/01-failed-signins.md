# Finding 01 - Failed Sign-ins

## Summary

Multiple failed authentication attempts were observed against the account:

entra.user01

## Evidence

### User

entra.user01

### Application

Azure Portal

### Result

Failure

### Error Code

50126

### Source Location

Newport, Telford And Wrekin, United Kingdom

### Authentication Requirement

Single-factor authentication

### Number of Failed Attempts

5

### Time Window

13/06/2026 21:25:34 – 21:25:57

## Risk

Repeated failed authentication attempts may indicate:

* Password spraying
* Brute force attacks
* Credential stuffing
* Unauthorized access attempts

## ATT&CK Mapping

T1110 - Brute Force

## Analyst Assessment

Five consecutive authentication failures were observed against a cloud identity.

The failures originated from the same source location and generated Entra ID error code 50126 indicating invalid credentials.

No successful authentication was observed during this activity.

Further monitoring is recommended to determine whether successful authentication occurs after repeated failures.

