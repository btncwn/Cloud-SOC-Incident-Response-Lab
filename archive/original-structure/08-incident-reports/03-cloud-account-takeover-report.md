# Incident Report 03 - Cloud Account Takeover Investigation

## Executive Summary

Authentication activity was reviewed to identify indicators of cloud account compromise, including failed sign-ins, successful authentication, and authentication method changes.

## Incident Details

| Field              | Value              |
| ------------------ | ------------------ |
| Investigation Type | Account Takeover   |
| Platform           | Microsoft Entra ID |
| Severity           | High               |
| Status             | Closed             |
| Analyst            | Turhan Acar        |

## Findings

### Finding 1

Multiple failed authentication attempts.

ATT&CK:

T1110 - Brute Force

### Finding 2

Successful authentication activity.

ATT&CK:

T1078 - Valid Accounts

### Finding 3

Authentication method registration reviewed.

ATT&CK:

T1556 - Modify Authentication Process

## Impact Assessment

No confirmed compromise identified. Investigation focused on developing cloud account takeover detection capabilities.

## Detection Opportunities

* Failed sign-in monitoring
* Successful sign-in monitoring
* Impossible travel detection
* Authentication method registration alerts

## Recommendations

* Enforce MFA
* Monitor authentication changes
* Review sign-in locations
* Alert on suspicious login patterns

## Conclusion

Cloud account takeover remains one of the most common attack paths and should be continuously monitored.

