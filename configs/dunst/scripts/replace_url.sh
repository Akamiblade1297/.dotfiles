#!/bin/bash

echo -n "$DUNST_BODY -> "
export DUNST_BODY=$(echo "$DUNST_BODY" | sed -E 's|https?://([^/]+)[^ ]*|(url:\1)|g')
echo "$DUNST_BODY"
