#!/bin/bash

DATE=$(date +"%Y-%m-%d_%H-%M-%S")
WORKSPACE_ID="75484b26-b7c2-4c74-bc60-60787541ede4"
OUTPUT_DIR="defender-pipeline/exports"
OUTPUT_FILE="$OUTPUT_DIR/failed-signins-$DATE.json"

mkdir -p "$OUTPUT_DIR"

az monitor log-analytics query \
  --workspace "$WORKSPACE_ID" \
  --analytics-query "
SigninLogs
| where ResultType != 0
| where TimeGenerated > ago(24h)
| project TimeGenerated, UserPrincipalName, IPAddress, AppDisplayName, ResultType, ResultDescription
| sort by TimeGenerated desc
" \
  --output json > "$OUTPUT_FILE"

echo "[+] Failed sign-in logs exported to: $OUTPUT_FILE"
