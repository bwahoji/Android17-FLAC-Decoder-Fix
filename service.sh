#!/system/bin/sh

MODDIR=${0%/*}
. "$MODDIR/common.sh"

sleep 3
if mountpoint -q "$TARGET" 2>/dev/null; then
  log_message "decoder patch already mounted during late_start"
else
  apply_patch_mount
  RESULT=$?
  if [ "$RESULT" -eq 0 ]; then
    log_message "decoder patch mounted during late_start"
  else
    log_message "late_start mount failed with code $RESULT"
  fi
fi
