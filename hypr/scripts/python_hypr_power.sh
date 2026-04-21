#!/bin/bash
# Hyprland power menu replacement

# Kill previous instance
if pgrep -x "python-hypr-power" > /dev/null; then
    pkill -x "python-hypr-power"
    exit 0
fi

# Ensure library path is correct
export LD_LIBRARY_PATH=/usr/local/lib:$LD_LIBRARY_PATH

# Ensure pipx-installed binaries are in PATH
export PATH="$HOME/.local/bin:$PATH"

# Launch python_hypr_power
python-hypr-power &