# Install the modified macOS keyboard layout for the current user.
[macos]
install:
    #!/usr/bin/env bash
    set -euo pipefail

    source='layouts/macOS/Universal.bundle'
    target="$HOME/Library/Keyboard Layouts/Universal.bundle"

    test -d "$source"
    mkdir -p "$(dirname "$target")"
    rm -rf "$target"
    ditto "$source" "$target"

    echo "Installed Universal Layout to: $target"
    echo "Log out and back in, then add it in System Settings -> Keyboard -> Input Sources."
