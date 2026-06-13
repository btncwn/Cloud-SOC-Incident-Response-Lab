# Finding 03 - Service Principal Creation

## Summary

Multiple service principal creation events were observed.

## Evidence

Category:

ApplicationManagement

Operation:

Add service principal

Result:

Success

## Risk

Service principals represent non-human identities and are frequently abused for persistence, privilege escalation, and cloud resource access.

## ATT&CK Mapping

T1136 - Create Account

T1098 - Account Manipulation

## Analyst Assessment

Service principals were created during application registration activities performed in the lab environment.

Review of permissions and credential assignments is recommended whenever new service principals are created.
