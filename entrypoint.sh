#!/usr/bin/env sh
set -eu

if [ -z "${TLS_KEY_PEM_B64:-}" ]; then
    echo "TLS_KEY_PEM_B64 is not set" >&2
    exit 1
fi

umask 077
base64 -d <<EOF > /tmp/tls_key.pem
${TLS_KEY_PEM_B64}
EOF

exec molly-brown -c /app/molly.conf
