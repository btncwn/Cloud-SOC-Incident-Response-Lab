#!/bin/bash

DATE=$(date +"%Y-%m-%d_%H-%M-%S")

RESOURCE_GROUP="rg-cloud-soc-lab"
WORKSPACE_NAME="law-cloud-soc-lab"

OUTPUT_DIR="defender-pipeline/exports"
OUTPUT_FILE="$OUTPUT_DIR/defender-sentinel-incidents-$DATE.json"

mkdir -p "$OUTPUT_DIR"

echo "[+] Exporting Microsoft Defender / Sentinel incidents..."

az sentinel incident list \
  --resource-group "$RESOURCE_GROUP" \
  --workspace-name "$WORKSPACE_NAME" \
  --output json > "$OUTPUT_FILE"

echo "[+] Export complete: $OUTPUT_FILE"
echo "[+] Current Git status:"
git status
