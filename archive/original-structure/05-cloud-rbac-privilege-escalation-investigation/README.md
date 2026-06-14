# Cloud RBAC Privilege Escalation Investigation

## Scenario

This investigation examines Azure role-based access control activity that may indicate privilege escalation.

The scenario focuses on an identity that starts with limited access and attempts to gain higher privileges through role assignment changes.

## Attack Flow

Limited Access Account

↓

Role Assignment Change

↓

Elevated Azure RBAC Permission

↓

Access to Cloud Resources

↓

Potential Tenant or Subscription Impact

## Investigation Objectives

- Identify Azure role assignment changes
- Review privileged role assignments
- Determine who initiated the change
- Review failed role assignment attempts
- Assess whether access was approved
- Recommend containment and remediation actions

## Evidence Sources

- Azure Activity Logs
- Microsoft Entra ID Audit Logs
- Microsoft Sentinel
- KQL hunting queries
- Azure RBAC role assignment events

## MITRE ATT&CK Mapping

| Activity | Technique |
|---|---|
| Role assignment abuse | T1098 - Account Manipulation |
| Valid account usage | T1078 - Valid Accounts |
| Privilege escalation | T1068 - Exploitation for Privilege Escalation |

## Response Actions

- Review initiating identity
- Review assigned role and scope
- Remove unauthorized role assignments
- Apply least privilege access
- Review privileged groups
- Monitor future RBAC changes
- Require approval for privileged role assignments

## Analyst Assessment

Cloud RBAC privilege escalation is a high-impact cloud security risk. Unauthorized role assignment changes can allow attackers to expand access from a limited account to sensitive Azure resources.
