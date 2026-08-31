#!/bin/bash
set -e
mkdir -p docx
cd docx_base64
for base in "План_уроков_на_месяц.docx" "Полный_словарик_для_конференции.docx" "Методичка_к_плану_уроков.docx"; do
  if ls ${base}.b64.part* 1>/dev/null 2>&1; then
    cat ${base}.b64.part* | base64 -d > ../docx/${base}
    echo "OK: docx/${base}"
  fi
done
echo "All done. Files are in docx/"
