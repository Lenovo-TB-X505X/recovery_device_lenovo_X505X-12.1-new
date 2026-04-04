# 📱 TWRP Device Tree — Lenovo Smart Tab M10 HD (TB-X505X)

![Lenovo Smart Tab M10 HD](https://static.lenovo.com/ww/campaigns/2019/smarttab/lenovo-smart-tab-gallery-5.jpg)

## 📌 Overview
This repository contains the **TWRP device tree** for the **Lenovo Smart Tab M10 HD (TB-X505X)**.

- Based on **AOSP recovery (Android 12.1 / TWRP minimal)**
- Fully functional for basic recovery usage

> ⚠️ **Disclaimer:**  
> This is an **unofficial build**. Flashing custom recovery may void your warranty or brick your device. Proceed only if you know what you're doing.

---

## ✅ Features

- ✔️ Booting recovery  
- ✔️ FBE/FDE decryption working  
- ✔️ MTP working  
- ✔️ Touchscreen working  
- ✔️ NTFS support  

---

## ⚠️ Known Issues

- Battery percentage requires patch (see below)  
- Minor UI glitches may occur  

---

## 📱 Device Specifications

| Component | Specification |
|----------|--------------|
| Chipset | Qualcomm Snapdragon 429 (SDM429) |
| CPU | Quad-core Cortex-A53 @ 2.0 GHz |
| GPU | Adreno 504 |
| RAM | 2 GB |
| Storage | 16 GB (eMMC) |
| microSD | Up to 256 GB |
| Display | 10.1" 1280 × 800 |
| Battery | 4850 mAh |
| Rear Camera | 5 MP |
| Front Camera | 2 MP |
| Wi-Fi | Dual-band 802.11 a/b/g/n/ac |
| Bluetooth | 4.2 |
| USB | USB Type-C |
| Android | 8.0 → 9.0 |
| Release | April 2019 |

---

## 🛠️ Build Instructions

```bash
. build/envsetup.sh
lunch twrp_X505X-eng
mka recoveryimage
```

---

## 🔧 Required Patch

Apply the patch inside:
```
patches/
```

To:
```
bootable/recovery
```

Fixes:
- Battery percentage indicator

---

## 📦 Notes

- Uses prebuilt kernel  
- Qualcomm FBE decryption enabled  
- Fake security patch level used for compatibility  

---

## 🙌 Credits

- TeamWin Recovery Project (TWRP)  
- Android Open Source Project (AOSP)  
- Lenovo  

---

## 📜 License

SPDX-License-Identifier: Apache-2.0
