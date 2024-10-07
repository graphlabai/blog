#! /bin/bash

source .env


INPUT_PATH="Sharp73-ch1.pdf"
OUTPUT_DIR="output"

unstructured-ingest \
  local \
    --input-path $INPUT_PATH \
    --output-dir $OUTPUT_DIR \
    --partition-by-api \
    --api-key $UNSTRUCTURED_API_KEY \
    --partition-endpoint $UNSTRUCTURED_PARTITION_ENDPOINT \
    --strategy hi_res \
    --additional-partition-args="{\"split_pdf_page\":\"true\", \"split_pdf_allow_failed\":\"true\", \"split_pdf_concurrency_level\": 15}"
