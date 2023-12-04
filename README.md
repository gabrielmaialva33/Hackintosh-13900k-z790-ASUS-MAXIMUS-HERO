# OpenCore EFI for Intel Hackintosh (macOS 10.13 - 14.0)

![alt text](https://raw.githubusercontent.com/gabrielmaialva33/efi-opencore-z690p/main/.github/images/img2.png)

## Specification

| **Component**    | **Model**                               |
|------------------|-----------------------------------------|
| CPU              | Intel i9-13900K (24) @ 3.20GHz          |
| Motherboard      | ROG MAXIMUS Z790 HERO                   |
| RAM              | 32GB (2x 16GB) Kingston FURY @ 5200MHz  |
| Audio Chipset    | ALC4082                                 |
| GPU              | Radeon RX 570 4GB                       |
| OS Disk (SSDM2)  | SSD Kingston NV2 M.2 2280 NVMe PCIe     |
| WiFi & Bluetooth | Intel AX210 / BCM4350C2                 |
| macOS version    | 14.0 (23A344) x86_64                    |

**macOS version**: 14.0 (23A344) x86_64  
**OpenCore version**: 0.9.6

## Credits

- [[Bootloader] OpenCore](https://github.com/acidanthera/OpenCorePkg)
- [[Driver] OpenRuntime](https://github.com/acidanthera/OpenCorePkg)
- [[Driver] HFSPlus](https://github.com/acidanthera/OcBinaryData/blob/master/Drivers/HfsPlus.efi)
- [[Kext] Lilu](https://github.com/acidanthera/Lilu)
- [[Kext] VirtualSMC](https://github.com/acidanthera/VirtualSMC)
- [[Kext] WhateverGreen](https://github.com/acidanthera/WhateverGreen)
- [[Kext] AppleALC](https://github.com/acidanthera/AppleALC)

## Compatible macOS versions

- High Sierra (10.13.x)
- Mojave (10.14.x)
- Catalina (10.15.x)
- Big Sur (10.16/11.4)
- Monterey (12.1)
- Ventura (13.5)
- Sonoma (14.0)

## How to use

1. Make your USB installer with [**this guide**](https://dortania.github.io/OpenCore-Install-Guide/installer-guide/)
2. Clone the repository and paste "BOOT" and "OC" directories into your's pendrive "EFI" folder
3. Download [**GenSMBIOS**](https://github.com/corpnewt/GenSMBIOS) to generate unique SMBIOS information. Run it and select **Generate SMBIOS**, as the model select **iMacPro1,1**.
4. Open config.plist with [**ProperTree**](https://github.com/corpnewt/ProperTree) and go to PlatformInfo > Generic. Set MLB (Board Serial), SystemSerialNumber (Serial) and SystemUUID (SmUUID) to generated values. Change ROM to your network card's MAC address without the `:` character. [**How to get MAC Address?**](https://www.wikihow.com/Find-the-MAC-Address-of-Your-Computer)
5. Boot it!

**You CAN NOT use SMBIOS from this repository, it MUST be unique for every macOS installation**

## Other guides

**If you have any problems with installation or booting your macOS, kernel panics or another system related issue check OC configuration guide**  
**If something else isn't working properly (for example USB ports, iServices, DRM/Netflix) check Post-Install guide**

- Creating USB installer: [**\*click\***](https://dortania.github.io/OpenCore-Install-Guide/installer-guide/)
- OpenCore configuration: [**\*click\***](https://dortania.github.io/OpenCore-Install-Guide/AMD/zen.html)
- Post-Install: [**\*click\***](https://dortania.github.io/OpenCore-Post-Install/)
- Troubleshooting: [**\*click\***](https://dortania.github.io/OpenCore-Post-Install/)
- ACPI patching: [**\*click\***](https://dortania.github.io/Getting-Started-With-ACPI/)
- USB mapping: [**\*click\***](https://dortania.github.io/OpenCore-Post-Install/usb/)
