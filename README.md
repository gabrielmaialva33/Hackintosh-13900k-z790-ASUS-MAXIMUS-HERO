# OpenCore EFI for Intel Hackintosh (macOS 10.13 - 13.0)

![alt text](https://raw.githubusercontent.com/gabrielmaialva33/efi-opencore-z690p/main/.github/images/img.png)

## Specification

| **Component**   | **Model**                       |
| --------------- |---------------------------------|
| CPU             | Intel i9-12900K (24) @ 3.20GHz  |
| Motherboard     | ASUS Z690-P                     |
| RAM             | 32GB (2x 16GB) Furry @ 52000MHz |
| Audio Chipset   | ALC-897                         |
| GPU             | Radeon RX 570                   |
| OS Disk (SSDM2) | WD Green 240GB                  |

**macOS version**: 13.0.0 (22A380)  
**OpenCore version**: 0.8.6

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
- Ventura (13.0)

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
