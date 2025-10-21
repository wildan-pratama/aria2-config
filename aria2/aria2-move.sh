#!/bin/sh
# POSIX-compatible aria2 auto-sort script

FILE_PATH="$3"
if [ -z "$FILE_PATH" ]; then
    exit 0
fi

FILE_NAME=$(basename "$FILE_PATH")
DEST_BASE="$HOME/Downloads"

# Category folders
VIDEO_DIR="$DEST_BASE/Videos"
MUSIC_DIR="$DEST_BASE/Music"
IMAGE_DIR="$DEST_BASE/Images"
DOC_DIR="$DEST_BASE/Documents"
ARCHIVE_DIR="$DEST_BASE/Archives"
APP_DIR="$DEST_BASE/Applications"
OTHER_DIR="$DEST_BASE/Others"

# Make sure directories exist
mkdir -p "$VIDEO_DIR" "$MUSIC_DIR" "$IMAGE_DIR" "$DOC_DIR" "$ARCHIVE_DIR" "$APP_DIR" "$OTHER_DIR"

# Lowercase filename
FILE_NAME_LC=$(printf '%s' "$FILE_NAME" | tr '[:upper:]' '[:lower:]')

# Determine destination
case "$FILE_NAME_LC" in
    *.mp4|*.mkv|*.avi|*.mov|*.flv|*.wmv)
        DEST="$VIDEO_DIR"
        ;;
    *.mp3|*.flac|*.wav|*.aac|*.ogg|*.m4a)
        DEST="$MUSIC_DIR"
        ;;
    *.jpg|*.jpeg|*.png|*.gif|*.bmp|*.webp|*.svg|*.tiff)
        DEST="$IMAGE_DIR"
        ;;
    *.pdf|*.doc|*.docx|*.xls|*.xlsx|*.ppt|*.pptx|*.txt|*.odt|*.ods|*.odp)
        DEST="$DOC_DIR"
        ;;
    *.zip|*.rar|*.7z|*.tar|*.tar.gz|*.tar.xz|*.gz|*.bz2|*.iso|*.bin|*.img)
        DEST="$ARCHIVE_DIR"
        ;;
    *.apk|*.deb|*.exe|*.rpm|*.appimage|*.msi|*.pkg)
        DEST="$APP_DIR"
        ;;
    *)
        DEST="$OTHER_DIR"
        ;;
esac

# Move the file
mv -f "$FILE_PATH" "$DEST"/ 2>/dev/null || true
