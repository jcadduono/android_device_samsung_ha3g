## TWRP device tree for Galaxy Note 3 (International Exynos)

Add to `.repo/local_manifests/ha3g.xml`:

```xml
<?xml version="1.0" encoding="UTF-8"?>
<manifest>
	<project path="device/samsung/ha3g" name="android_device_samsung_ha3g" remote="TeamWin" revision="android-6.0" />
</manifest>
```

Then run `repo sync` to check it out.

To build:

```sh
. build/envsetup.sh
lunch omni_ha3g-eng
make -j5 recoveryimage
```

Kernel sources are available at: https://github.com/jcadduono/android_kernel_samsung_ha3g/tree/twrp-6.0

