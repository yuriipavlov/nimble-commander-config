#!/bin/bash
FILEPATH="$1"

# Remove surrounding quotes if present (just in case)
FILEPATH="${FILEPATH%\"}"
FILEPATH="${FILEPATH#\"}"

osascript - "$FILEPATH" <<EOF
on run {inputPath}
    try
        set theItem to (POSIX file inputPath) as alias
        tell application "Finder"
            activate
            reveal theItem
            open information window of theItem
        end tell
    on error errMsg number errNum
        display dialog "Error (" & errNum & "): " & errMsg buttons {"OK"} default button 1 with icon stop
    end try
end run
EOF
