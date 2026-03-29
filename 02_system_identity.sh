#!/bin/bash
# Script 2: FOSS Package Inspector
# Concepts Used: if-then-else, case statement, dpkg-query, grep

TARGET_PKG="python3"

echo ">>> Inspecting System for Package: $TARGET_PKG <<<"
echo "------------------------------------------------------"

# Checking installation status using dpkg-query for precision
if dpkg-query -W -f='${Status}' "$TARGET_PKG" 2>/dev/null | grep -q "install ok installed"; then
    echo "[SUCCESS] $TARGET_PKG is securely installed on this system."
    PKG_VERSION=$(dpkg-query -W -f='${Version}' "$TARGET_PKG")
    echo "[DETAILS] Detected Version: $PKG_VERSION"
else
    echo "[WARNING] $TARGET_PKG was not found on this system."
fi

echo "------------------------------------------------------"
echo "FOSS Philosophy Overview:"

# Case statement covering Python and other FOSS tools
case "$TARGET_PKG" in
    python3)
        echo "-> Python: Built on the belief that code is read more often than it is written. Community over corporate dictation."
        ;;
    firefox)
        echo "-> Firefox: A browser protecting the open web, free from monopoly."
        ;;
    git)
        echo "-> Git: Decentralized version control born from the need for absolute freedom."
        ;;
    apache2)
        echo "-> Apache: The web server that essentially built the open internet."
        ;;
    *)
        echo "-> $TARGET_PKG is a valued part of the open-source ecosystem."
        ;;
esac
echo "------------------------------------------------------"
