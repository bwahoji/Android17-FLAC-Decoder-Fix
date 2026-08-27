#!/system/bin/sh

MODDIR=${0%/*}
TARGET=/apex/com.android.media.swcodec/lib64/libcodec2_soft_flacdec.so
if mountpoint -q "$TARGET" 2>/dev/null; then
  echo "Android 17 FLAC decoder patch: ACTIVE"
else
  echo "Android 17 FLAC decoder patch: INACTIVE"
fi
echo "Codec service: $(getprop init.svc.media.swcodec)"
echo "Log:"
cat "$MODDIR/flac17.log" 2>/dev/null
