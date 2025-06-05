#!/bin/sh

echo ">> resetting test bed..."
rm -rf import || true
cp -a test/import-template import || true
echo "done."
echo ""

import-pictures.sh
