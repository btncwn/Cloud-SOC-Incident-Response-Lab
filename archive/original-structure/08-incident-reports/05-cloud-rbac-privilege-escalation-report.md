# Incident Report 05 - Cloud RBAC Privilege Escalation Investigation

## Executive Summary

Role assignment activity was reviewed to identify indicators of privilege escalation through Azure RBAC and Microsoft Entra role assignments.

## Incident Details

| Field              | Value                      |
| ------------------ | -------------------------- |
| Investigation Type | Privilege Escalation       |
| Platform           | Azure / Microsoft Entra ID |
| Severity           | High                       |
| Status             | Closed                     |
| Analyst            | Turhan Acar                |

## Findings

### Finding 1

Role assignment activity reviewed.

ATT&CK:

T1098 - Account Manipulation

### Finding 2

Privileged access changes reviewed.

ATT&CK:

T1078 - Valid Accounts

### Finding 3

RBAC escalation paths identified.

ATT&CK:

T1068 - Exploitation for Privilege Escalation

## Impact Assessment

Unauthorized RBAC changes can significantly increase attacker access across cloud resources.

## Detection Opportunities

* Role assignment creation
* Privileged role assignments
* Failed role assignment attempts
* Group membership changes

## Recommendations

* Implement least privilege
* Require approval workflows
* Monitor privileged roles
* Alert on RBAC modifications

## Conclusion

RBAC monitoring is critical for detecting and preventing cloud privilege escalation.

