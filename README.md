<h1 align="center">
  <br>
  <img src="https://dortania.github.io/OpenCore-Install-Guide/dortania-logo-clear.png" alt="Hackintosh" width="200">
  <br>
  Hackintosh • i9-13900K • Z790 HERO
  <br>
</h1>

<h4 align="center">
  OpenCore EFI for ASUS ROG MAXIMUS Z790 HERO + Intel Core i9-13900K
</h4>

<p align="center">
  <a href="https://github.com/acidanthera/OpenCorePkg/releases">
    <img src="https://img.shields.io/badge/OpenCore-1.0.4-0D92F4?style=for-the-badge&logo=gitbook&logoColor=white" alt="OpenCore" />
  </a>
  <a href="https://www.apple.com/macos/sequoia/">
    <img src="https://img.shields.io/badge/macOS-Sequoia_15.7.3-F05032?style=for-the-badge&logo=apple&logoColor=white" alt="macOS" />
  </a>
  <a href="https://www.intel.com/content/www/us/en/products/sku/230496/intel-core-i913900k-processor-36m-cache-up-to-5-80-ghz/specifications.html">
    <img src="https://img.shields.io/badge/Intel-i9--13900K-00C8FF?style=for-the-badge&logo=intel&logoColor=white" alt="CPU" />
  </a>
</p>

<p align="center">
  <img src="https://img.shields.io/badge/SMBIOS-MacPro7,1-BA68C8?style=for-the-badge&logo=apple&logoColor=white" alt="SMBIOS" />
  <img src="https://img.shields.io/badge/AMD-RX_570-ED1C24?style=for-the-badge&logo=amd&logoColor=white" alt="GPU" />
  <img src="https://img.shields.io/badge/NVIDIA-RTX_4090-76B900?style=for-the-badge&logo=nvidia&logoColor=white" alt="NVIDIA" />
  <a href="https://github.com/gabrielmaialva33/Hackintosh-13900k-z790-ASUS-MAXIMUS-HERO/blob/main/LICENSE">
    <img src="https://img.shields.io/github/license/gabrielmaialva33/Hackintosh-13900k-z790-ASUS-MAXIMUS-HERO?style=for-the-badge&color=5D6D7E&logo=opensourceinitiative&logoColor=white" alt="License" />
  </a>
</p>

<br>

<p align="center">
  <a href="#-hardware">Hardware</a> •
  <a href="#-whats-working">What's Working</a> •
  <a href="#-kexts">Kexts</a> •
  <a href="#-installation">Installation</a> •
  <a href="#-guides">Guides</a> •
  <a href="#-credits">Credits</a>
</p>

<br>

<p align="center">
  <img src="https://raw.githubusercontent.com/gabrielmaialva33/efi-opencore-z690p/main/.github/images/img5.png" alt="macOS Screenshot" width="90%">
</p>

---

## 🖥 Hardware

<table>
<tr><td>

| Component | Model |
|:----------|:------|
| **CPU** | Intel Core i9-13900K (24 cores) @ 3.0 GHz |
| **Motherboard** | ASUS ROG MAXIMUS Z790 HERO |
| **RAM** | 32GB (2x16GB) Kingston FURY @ 5200MHz |
| **GPU (Display)** | AMD Radeon RX 570 4GB |
| **GPU (Compute)** | NVIDIA GeForce RTX 4090 24GB |
| **Audio** | Realtek ALC4082 |
| **Ethernet** | Intel i226-V 2.5GbE |
| **WiFi/BT** | Intel AX210 (AirportItlwm + OCLP) |
| **Thunderbolt** | Intel Maple Ridge 4C (TB4) |
| **Storage** | 2x Samsung PM971 NVMe |
| **SMBIOS** | MacPro7,1 |

</td><td>

### System Info

```
OS:        macOS Sequoia 15.7.3
Kernel:    Darwin 24.6.0 x86_64
OpenCore:  1.0.4
SMBIOS:    MacPro7,1
```

### PCI Devices

```
GFX0: Radeon RX 570 (Display)
GFX1: RTX 4090 (Compute/NVDAAL)
ETH:  Intel i226-V
WIFI: Intel AX210 (OCLP)
TB4:  Maple Ridge
```

</td></tr>
</table>

---

## ✅ What's Working

| Feature | Status | Notes |
|:--------|:------:|:------|
| **macOS Boot** | ✅ | High Sierra → Sequoia |
| **GPU Acceleration** | ✅ | Metal, QE/CI via RX 570 |
| **NVIDIA Compute** | ✅ | RTX 4090 via NVDAAL |
| **Audio** | ✅ | ALC4082 via AppleALC |
| **Ethernet** | ✅ | i226-V via AppleIGC |
| **WiFi** | ✅ | Intel AX210 via AirportItlwm + OCLP |
| **Bluetooth** | ✅ | Intel AX210 via IntelBluetoothFirmware |
| **Thunderbolt 4** | ✅ | Hot-plug working |
| **USB Ports** | ✅ | Mapped via USBMap.kext |
| **Sleep/Wake** | ✅ | S3 sleep working |
| **iServices** | ✅ | iMessage, FaceTime |
| **DRM** | ✅ | Apple TV+, Netflix |
| **Hardware Sensors** | ✅ | VirtualSMC sensors |
| **NVMe** | ✅ | TRIM enabled |

---

## 🔧 Work in Progress

> **Intel WiFi Native Support** 🛜
>
> We're actively working on getting Intel AX210 WiFi to work natively on macOS Sequoia without HeliPort!
> Currently using **AirportItlwm + OpenCore Legacy Patcher (OCLP)** for native WiFi menu support.
>
> The goal is to have full native WiFi functionality including:
> - Native macOS WiFi menu ✅
> - Location Services ✅
> - Handoff & Universal Clipboard ✅
> - AirDrop (partial)
>
> Follow the progress and contribute at [OpenIntelWireless/itlwm](https://github.com/OpenIntelWireless/itlwm)

---

## 📦 Kexts

<details>
<summary><b>Click to expand kext list</b></summary>

| Kext | Version | Description |
|:-----|:-------:|:------------|
| [Lilu](https://github.com/acidanthera/Lilu) | 1.7.2 | Kernel patching framework |
| [VirtualSMC](https://github.com/acidanthera/VirtualSMC) | 1.3.8 | SMC emulator |
| [SMCProcessor](https://github.com/acidanthera/VirtualSMC) | 1.3.8 | CPU sensors |
| [SMCSuperIO](https://github.com/acidanthera/VirtualSMC) | 1.3.8 | I/O sensors |
| [WhateverGreen](https://github.com/acidanthera/WhateverGreen) | 1.7.1 | GPU patching |
| [AppleALC](https://github.com/acidanthera/AppleALC) | 1.9.7 | Audio codec |
| [AppleIGC](https://github.com/SongXiaoXi/AppleIGC) | 1.5 | Intel i226-V ethernet |
| [NVMeFix](https://github.com/acidanthera/NVMeFix) | 1.1.4 | NVMe power management |
| [RestrictEvents](https://github.com/acidanthera/RestrictEvents) | 1.1.7 | Event restrictions |
| [CPUFriend](https://github.com/acidanthera/CPUFriend) | 1.3.1 | CPU power management |
| [CPUFriendDataProvider](https://github.com/corpnewt/CPUFriendFriend) | 1.0.0 | CPU frequency data |
| [CpuTopologyRebuild](https://github.com/b00t0x/CpuTopologyRebuild) | 1.1.0 | CPU topology for P/E cores |
| [USBMap](https://github.com/corpnewt/USBMap) | 1.0 | Custom USB port mapping |
| [USBWakeFixup](https://github.com/osy/USBWakeFixup) | 1.0 | USB wake fixes |
| [NVDAAL](https://github.com/Jnewbon/nvdaal) | 0.1.0 | NVIDIA compute support |
| [AirportItlwm](https://github.com/OpenIntelWireless/itlwm) | 2.3.0 | Intel WiFi native (with OCLP) |
| [IntelBluetoothFirmware](https://github.com/OpenIntelWireless/IntelBluetoothFirmware) | 2.5.0 | Intel Bluetooth firmware |
| [IntelBTPatcher](https://github.com/OpenIntelWireless/IntelBluetoothFirmware) | 2.5.0 | Bluetooth patches |
| [BlueToolFixup](https://github.com/acidanthera/BrcmPatchRAM) | 2.6.9 | Bluetooth fixes for Monterey+ |

</details>

---

## ⚙️ ACPI & Boot Args

### SSDT Patches

| SSDT | Purpose |
|:-----|:--------|
| `ROG-Maximus-Z790-Hero.aml` | Custom SSDT for Z790 platform |

### ACPI Patches

- `IPIC IRQ 2 Patch` - Fix IRQ conflicts
- `RTC IRQ 8 Patch` - Fix RTC conflicts
- `TIMR IRQ 0 Patch` - Fix timer conflicts

### Boot Arguments

```
watchdog=0 npci=0x3000 -wegnoigpu -ctrsmt -btlfxbeta amfi=0x80
```

| Arg | Description |
|:----|:------------|
| `watchdog=0` | Disable watchdog timer |
| `npci=0x3000` | PCI configuration fix |
| `-wegnoigpu` | Disable iGPU (no iGPU on 13900K) |
| `-ctrsmt` | Raptor Lake SMT compatibility |
| `-btlfxbeta` | Bluetooth fix beta |
| `amfi=0x80` | Allow unsigned kexts (NVDAAL) |

---

## 🚀 Installation

### Prerequisites

- USB drive (16GB+)
- macOS installer
- [ProperTree](https://github.com/corpnewt/ProperTree) for plist editing
- [GenSMBIOS](https://github.com/corpnewt/GenSMBIOS) for serial generation

### Steps

1. **Create USB Installer**
   ```bash
   # Follow Dortania's guide for your macOS version
   ```
   📖 [Creating the USB](https://dortania.github.io/OpenCore-Install-Guide/installer-guide/)

2. **Clone this EFI**
   ```bash
   git clone https://github.com/gabrielmaialva33/Hackintosh-13900k-z790-ASUS-MAXIMUS-HERO.git
   ```

3. **Copy to USB**
   ```
   Copy EFI/BOOT and EFI/OC to your USB's EFI partition
   ```

4. **Generate SMBIOS** ⚠️ REQUIRED
   ```bash
   # Run GenSMBIOS and select "Generate SMBIOS"
   # Choose model: MacPro7,1
   ```

5. **Edit config.plist**

   Open with ProperTree and set in `PlatformInfo > Generic`:

   | Key | Value |
   |:----|:------|
   | `MLB` | Board Serial from GenSMBIOS |
   | `SystemSerialNumber` | Serial from GenSMBIOS |
   | `SystemUUID` | SmUUID from GenSMBIOS |
   | `ROM` | Your MAC address (no colons) |

6. **Boot and Install!**

> ⚠️ **WARNING**: You MUST generate unique SMBIOS values. Using this repo's serials will cause conflicts and may block your Apple ID.

---

## 📚 Guides

| Guide | Description |
|:------|:------------|
| [OpenCore Install Guide](https://dortania.github.io/OpenCore-Install-Guide/) | Complete installation guide |
| [OpenCore Post-Install](https://dortania.github.io/OpenCore-Post-Install/) | Post-installation tweaks |
| [GPU Buyers Guide](https://dortania.github.io/GPU-Buyers-Guide/) | Compatible GPUs |
| [ACPI Patching](https://dortania.github.io/Getting-Started-With-ACPI/) | SSDT creation |
| [USB Mapping](https://dortania.github.io/OpenCore-Post-Install/usb/) | USB port configuration |
| [Troubleshooting](https://dortania.github.io/OpenCore-Install-Guide/troubleshooting/troubleshooting.html) | Common issues |

---

## 🌟 Credits

### Bootloader & Drivers
- [OpenCorePkg](https://github.com/acidanthera/OpenCorePkg) - OpenCore bootloader
- [OcBinaryData](https://github.com/acidanthera/OcBinaryData) - HfsPlus.efi

### Kext Developers
- [Acidanthera](https://github.com/acidanthera) - Lilu, VirtualSMC, WhateverGreen, AppleALC, NVMeFix, RestrictEvents, CPUFriend
- [SongXiaoXi](https://github.com/SongXiaoXi) - AppleIGC
- [b00t0x](https://github.com/b00t0x) - CpuTopologyRebuild
- [osy](https://github.com/osy) - USBWakeFixup

### Guides & Community
- [Dortania](https://dortania.github.io/) - OpenCore guides
- [Olarila](https://www.olarila.com/) - ACPI resources

---

## 👤 Author

<table>
  <tr>
    <td align="center">
      <a href="https://github.com/gabrielmaialva33">
        <img src="https://avatars.githubusercontent.com/u/26732067?size=150" width="100px;" alt="Gabriel Maia"/>
        <br />
        <sub><b>Gabriel Maia</b></sub>
      </a>
      <br />
      <a href="https://twitter.com/gabrielmaialva" title="Twitter">🐦</a>
      <a href="https://www.linkedin.com/in/gabrielmaialva33/" title="LinkedIn">💼</a>
    </td>
  </tr>
</table>

---

<p align="center">
  <img src="https://raw.githubusercontent.com/gabrielmaialva33/gabrielmaialva33/master/assets/gray0_ctp_on_line.svg?sanitize=true" />
</p>

<p align="center">
  Made with ❤️ by <a href="https://github.com/gabrielmaialva33">Gabriel Maia</a>
</p>

<p align="center">
  <sub>If this helped you, consider giving it a ⭐</sub>
</p>
