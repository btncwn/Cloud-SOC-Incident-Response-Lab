# Incident Report 01 - Entra ID Identity Attack Investigation

## Executive Summary

Identity administration activity was observed within Microsoft Entra ID involving user creation, group modification, service principal creation, and authentication method registration.

The activity was reviewed to determine whether it represented legitimate administration or potential identity abuse.

## Incident Details

| Field              | Value              |
| ------------------ | ------------------ |
| Investigation Type | Identity Security  |
| Platform           | Microsoft Entra ID |
| Severity           | Medium             |
| Status             | Closed             |
| Analyst            | Turhan Acar        |

## Timeline

| Time        | Event                               |
| ----------- | ----------------------------------- |
| 15:50       | User account created                |
| 15:50       | Password profile modified           |
| 15:53–15:55 | Service principal creation activity |
| 15:55       | Security information registration   |

## Findings

### Finding 1

New user creation observed.

ATT&CK:

T1136 - Create Account

### Finding 2

Password profile modification observed.

ATT&CK:

T1098 - Account Manipulation

### Finding 3

Service principal creation observed.

ATT&CK:

T1136 - Create Account

### Finding 4

Authentication method registration observed.

ATT&CK:

T1556 - Modify Authentication Process

## Impact Assessment

No malicious activity was identified.

Activities were determined to be expected administrative actions performed within the lab environment.

## Detection Opportunities

* New user creation
* Group membership modification
* Service principal creation
* Security information registration

## Recommendations

* Enable alerting for identity administration events
* Monitor service principal creation activity
* Review authentication method changes
* Enforce MFA for privileged users

## Conclusion

The investigation confirmed that observed activity was authorized and expected. Detection logic and Sentinel analytics rules were developed to improve future visibility.

