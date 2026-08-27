#!/system/bin/sh

MODDIR=${0%/*}
. "$MODDIR/common.sh"

sleep 3
apply_patch_mount
RESULT=$?
if [ "$RESULT" -eq 0 ]; then
  log_message "decoder patch verified during late_start"
else
  log_message "late_start mount failed with code $RESULT; disabling module"
  touch "$MODDIR/disable"
fi
