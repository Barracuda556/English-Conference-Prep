#!/bin/bash
# Decode original Word files from base64
mkdir -p docx
for f in docx_base64/*.b64; do
  [ -f "$f" ] || continue
  base=$(basename "$f" .b64)
  base64 -d "$f" > "docx/$base"
  echo "Created docx/$base"
done
echo "Done. Open the files in the docx/ folder with Microsoft Word or LibreOffice."
