#!/bin/sh

echo "Compressing JS..."
rm -f /aastra/compressed.js
rm -f /aastra/compressed.js.gz
uglifyjs --compress --mangle reserved=['$','require','exports','$super'] -o /aastra/compressed.js -- /aastra/all.js
gzip -k /aastra/compressed.js
echo "Compressing JS done."
