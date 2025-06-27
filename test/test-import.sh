#!/bin/sh

SCRIPT_DIR=$(dirname "$0")

echo ">> resetting test bed..."
rm -rf ${SCRIPT_DIR}/../import || true
cp -a ${SCRIPT_DIR}/import-template ${SCRIPT_DIR}/../import || true
echo "done."
echo ""

${SCRIPT_DIR}/../import-pictures.sh
