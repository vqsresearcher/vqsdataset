#!/bin/bash
# Example: evaluate predicted masks on the VQS test split.
#
# Edit the three paths below for your method, then run:
#   bash pipeline/examples/run_metrics_example.sh

set -euo pipefail

VQS_ROOT="$(cd "$(dirname "${BASH_SOURCE[0]}")/../.." && pwd)"

# Ground-truth masks for the test split (must match the split used at training/eval time)
GT_FOLDER="/path/to/masks_filtered_0.0007_Feb15"

# Folder produced by model inference (one subfolder per video_id)
PRED_FOLDER="/path/to/test_outputs_2stage_DAM_AdaptiveGate_Jan28"

# Official test video list
VIDEO_LIST_FILE="/path/to/splits/final_mixture_exchange100_Jan3/test_t-IoU.txt"

OUTPUT_FILE="$VQS_ROOT/results/my_method_metrics.json"
mkdir -p "$(dirname "$OUTPUT_FILE")"

bash "$VQS_ROOT/metrics/scripts/run_metrics.sh" \
    --gt-folder "$GT_FOLDER" \
    --pred-folder "$PRED_FOLDER" \
    --video-list "$VIDEO_LIST_FILE" \
    --output "$OUTPUT_FILE"
