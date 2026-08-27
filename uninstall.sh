#!/system/bin/sh

TARGET=/apex/com.android.media.swcodec/lib64/libcodec2_soft_flacdec.so

if mountpoint -q "$TARGET" 2>/dev/null; then
  umount "$TARGET"
  setprop ctl.restart media.swcodec
fi
