Android 17 FLAC Decoder Fix

This module can be installed on any rooted Android device. It attempts the
patch whenever the target library path exists; there is no runtime hash check.
Using it on an untested ROM can cause crashes or a boot loop.

It bind-mounts a four-byte binary patch over libcodec2_soft_flacdec.so. The
patch changes the fixed Codec2 FLAC input buffer from 32768 to 131072 bytes.
No system partition or APEX image is permanently modified.

Install in KernelSU Manager and reboot. Use the module Action button to check
whether the patch is active. Disable or uninstall the module and reboot to
restore the original decoder.

If boot behavior is abnormal, use KernelSU Safe Mode, disable the module, or
delete android17_flac_decoder_fix from recovery.

Before publishing, replace the author in module.prop and add the repository
URL, issue tracker, and credits that match your project.
