# Incident Report 04 - Service Principal Compromise Investigation

## Executive Summary

Service principal activity was reviewed to identify indicators of non-human identity abuse, credential creation, and persistence mechanisms.

## Incident Details

| Field              | Value                       |
| ------------------ | --------------------------- |
| Investigation Type | Non-Human Identity Security |
| Platform           | Microsoft Entra ID          |
| Severity           | High                        |
| Status             | Closed                      |
| Analyst            | Turhan Acar                 |

## Findings

### Finding 1

Service principal creation observed.

ATT&CK:

T1136 - Create Account

### Finding 2

Client secret creation reviewed.

ATT&CK:

T1550 - Use Alternate Authentication Material

### Finding 3

Failed service principal creation attempts observed.

ATT&CK:

T1098 - Account Manipulation

## Impact Assessment

Service principals can provide persistent access to cloud resources and should be closely monitored.

## Detection Opportunities

* Service principal creation
* Client secret creation
* OAuth permission grants
* Service principal sign-ins

## Recommendations

* Rotate secrets regularly
* Apply least privilege permissions
* Review service principal ownership
* Alert on new credential creation

## Conclusion

The investigation demonstrated the importance of monitoring non-human identities within cloud environments.

