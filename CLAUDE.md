# CLAUDE.md

This file provides guidance to Claude Code (claude.ai/code) when working with code in this repository.

## Repository Overview

This is an OpenCore EFI configuration for a Hackintosh system running on Intel i9-13900K with ASUS ROG MAXIMUS Z790 HERO motherboard. The EFI is ready to use and does not require building—it's a configuration-based project.

**Target Hardware:**
- CPU: Intel i9-13900K (24 cores)
- Motherboard: ROG MAXIMUS Z790 HERO
- GPU: AMD Radeon RX 570 4GB
- Audio: ALC4082
- Ethernet: Intel i226-V 2.5G
- WiFi/BT: Intel AX210
- SMBIOS: MacPro7,1

**Supported macOS:** High Sierra (10.13) through Sequoia (15.x)

## Project Structure

```
EFI/
├── BOOT/BOOTx64.efi           # UEFI bootloader
└── OC/                         # OpenCore directory
    ├── config.plist            # Main configuration (edit with ProperTree)
    ├── OpenCore.efi            # Bootloader
    ├── ACPI/                   # SSDT patches (.aml compiled, .dsl source)
    ├── Drivers/                # UEFI drivers (HfsPlus, OpenCanopy, etc.)
    ├── Kexts/                  # Kernel extensions (22 total)
    └── Resources/              # Boot UI theme (GoldenGate)
```

## Key Files

**config.plist** - The main configuration file containing:
- ACPI patches (IRQ fixes for IPIC, RTC, TIMR)
- Booter quirks for memory management
- DeviceProperties for PCI devices
- Kernel/Kext loading order and settings
- NVRAM boot arguments
- PlatformInfo/SMBIOS settings

**ROG-Maximus-Z790-Hero.dsl** - ACPI source defining:
- All 32 processor cores (CP00-CP31)
- Fake EC device for Darwin compatibility
- Note: PEG2 device removed to not block RTX 4090

## Working with This Repository

### Editing config.plist
Use [ProperTree](https://github.com/corpnewt/ProperTree) for editing—do not use generic text editors as they may corrupt the plist structure.

### Kext Dependencies
Lilu.kext is the core framework—most other kexts depend on it. Load order matters and is defined in config.plist.

### SMBIOS Warning
The SMBIOS values in this repo are examples. Users must generate unique values using [GenSMBIOS](https://github.com/corpnewt/GenSMBIOS) with model "MacPro7,1".

### WiFi Configuration
- **AirportItlwm.kext** is enabled for Sequoia compatibility
- **itlwm.kext** is disabled (alternative that requires HeliPort app)
- Only one should be enabled at a time in config.plist

### USB Mapping
Custom USBMap.kext is used. USBInjectAll.kext and XHCI-unsupported.kext are disabled.

## Boot Arguments

```
watchdog=0 npci=0x3000 -wegnoigpu -ctrsmt -btlfxbeta amfi=0x80
```

- `-wegnoigpu`: WhateverGreen disables integrated GPU
- `-ctrsmt`: CPU SMT compatibility
- `-btlfxbeta`: Bluetooth fix beta mode

## External Resources

- [OpenCore Install Guide](https://dortania.github.io/OpenCore-Install-Guide/)
- [OpenCore Post-Install](https://dortania.github.io/OpenCore-Post-Install/)
- [USB Mapping Guide](https://dortania.github.io/OpenCore-Post-Install/usb/)
- [ACPI Guide](https://dortania.github.io/Getting-Started-With-ACPI/)
