SKIPMOUNT=true

TARGET=/apex/com.android.media.swcodec/lib64/libcodec2_soft_flacdec.so
set_perm "$MODPATH/post-fs-data.sh" 0 0 0755
set_perm "$MODPATH/service.sh" 0 0 0755
set_perm "$MODPATH/action.sh" 0 0 0755
set_perm "$MODPATH/uninstall.sh" 0 0 0755
set_perm "$MODPATH/lib64/libcodec2_soft_flacdec.so" 0 0 0644
ui_print "- Installation prepared; compatibility is checked at boot"
ui_print "- Reboot after installation"
