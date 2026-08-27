#!/system/bin/sh

MODDIR=${0%/*}
. "$MODDIR/common.sh"

apply_patch_mount
RESULT=$?
if [ "$RESULT" -eq 0 ]; then
  log_message "decoder patch mounted during post-fs-data"
else
  log_message "post-fs-data mount failed with code $RESULT"
fi
