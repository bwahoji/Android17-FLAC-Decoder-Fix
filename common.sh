#!/system/bin/sh

TARGET=/apex/com.android.media.swcodec/lib64/libcodec2_soft_flacdec.so
PATCHED="$MODDIR/lib64/libcodec2_soft_flacdec.so"
LOG="$MODDIR/flac17.log"

log_message() {
  echo "$(date '+%Y-%m-%d %H:%M:%S') $*" >> "$LOG"
}

apply_patch_mount() {
  [ -f "$TARGET" ] || return 12
  [ -f "$PATCHED" ] || return 13

  chown 0:0 "$PATCHED"
  chmod 0644 "$PATCHED"
  chcon u:object_r:system_lib_file:s0 "$PATCHED" || return 16
  mount -o bind "$PATCHED" "$TARGET" || return 17
  if [ "$(getprop init.svc.media.swcodec)" = "running" ]; then
    setprop ctl.restart media.swcodec
  fi
  return 0
}
