<h1 align="center">
  <br>
  <img src="https://dortania.github.io/OpenCore-Install-Guide/dortania-logo-clear.png" alt="Hackintosh" width="200">
  <br>
  OpenCore EFI for Intel Hackintosh
  <br>
</h1>

<p align="center">
  <strong>A complete OpenCore EFI configuration for Intel-based Hackintosh systems</strong>
</p>

<p align="center">
  <img src="https://img.shields.io/badge/OpenCore-1.0.3-success" alt="OpenCore Version" />
  <img src="https://img.shields.io/badge/macOS-10.13~15.3-informational" alt="macOS Compatibility" />
  <img src="https://img.shields.io/badge/CPU-i9--13900K-blue" alt="CPU" />
  <img src="https://img.shields.io/badge/SMBIOS-MacPro7,1-orange" alt="SMBIOS" />
  <img src="https://img.shields.io/badge/license-MIT-lightgrey" alt="License" />
</p>

<br>

<p align="center">
  <a href="#desktop_computer-specification">Specification</a>&nbsp;&nbsp;&nbsp;|&nbsp;&nbsp;&nbsp;
  <a href="#apple-compatible-macos-versions">Compatibility</a>&nbsp;&nbsp;&nbsp;|&nbsp;&nbsp;&nbsp;
  <a href="#gear-how-to-use">Installation</a>&nbsp;&nbsp;&nbsp;|&nbsp;&nbsp;&nbsp;
  <a href="#books-other-guides">Guides</a>&nbsp;&nbsp;&nbsp;|&nbsp;&nbsp;&nbsp;
  <a href="#star-credits">Credits</a>
</p>

<br>

![Hackintosh Screenshot](https://raw.githubusercontent.com/gabrielmaialva33/efi-opencore-z690p/main/.github/images/img4.png)

## :desktop_computer: Specification

| **Component**    | **Model**                                 |
|------------------|-------------------------------------------|
| CPU              | Intel i9-13900K (24) @ 3.20GHz            |
| Motherboard      | ROG MAXIMUS Z790 HERO                     |
| RAM              | 32GB (2x 16GB) Kingston FURY @ 5200MHz    |
| Audio Chipset    | ALC4082                                   |
| GPU              | AMD Radeon RX 570 4GB                     |
| OS Disk (SSDM2)  | SSD Kingston NV2 M.2 2280 NVMe PCIe       |
| WiFi & Bluetooth | Intel AX210 / BCM4350C2 (working bt only) |
| macOS Version    | 15.3.2 (24D81) x86_64                     |
| OpenCore Version | 1.0.3                                     |
| SMBIOS           | MacPro7,1                                 |

<br>

## :apple: Compatible macOS Versions

- High Sierra (10.13.x)
- Mojave (10.14.x)
- Catalina (10.15.x)
- Big Sur (10.16/11.4)
- Monterey (12.1)
- Ventura (13.5)
- Sonoma (14.0)
- Sequoia (15.x)

<br>

## :gear: How to Use

1. Make your USB installer with [**this guide**](https://dortania.github.io/OpenCore-Install-Guide/installer-guide/)
2. Clone the repository and paste "BOOT" and "OC" directories into your's pendrive "EFI" folder
3. Download [**GenSMBIOS**](https://github.com/corpnewt/GenSMBIOS) to generate unique SMBIOS information. Run it and
   select **Generate SMBIOS**, as the model select **MacPro7,1**.
4. Open config.plist with [**ProperTree**](https://github.com/corpnewt/ProperTree) and go to PlatformInfo > Generic. Set
   MLB (Board Serial), SystemSerialNumber (Serial) and SystemUUID (SmUUID) to generated values. Change ROM to your
   network card's MAC address without the `:` character. [**How to get MAC Address?
   **](https://www.wikihow.com/Find-the-MAC-Address-of-Your-Computer)
5. Boot it!

> ⚠️ **IMPORTANT**: You CAN NOT use SMBIOS from this repository, it MUST be unique for every macOS installation

<br>

## :books: Other Guides

**If you have any problems with installation or booting your macOS, kernel panics or another system related issue check
OC configuration guide**  
**If something else isn't working properly (for example USB ports, iServices, DRM/Netflix) check Post-Install guide**

- Creating USB installer: [**\*click\***](https://dortania.github.io/OpenCore-Install-Guide/installer-guide/)
- OpenCore configuration: [**\*click\***](https://dortania.github.io/OpenCore-Install-Guide/AMD/zen.html)
- Post-Install: [**\*click\***](https://dortania.github.io/OpenCore-Post-Install/)
- Troubleshooting: [**\*click\***](https://dortania.github.io/OpenCore-Post-Install/)
- ACPI patching: [**\*click\***](https://dortania.github.io/Getting-Started-With-ACPI/)
- USB mapping: [**\*click\***](https://dortania.github.io/OpenCore-Post-Install/usb/)

<br>

## :star: Credits

- [[Bootloader] OpenCore](https://github.com/acidanthera/OpenCorePkg)
- [[Driver] OpenRuntime](https://github.com/acidanthera/OpenCorePkg)
- [[Driver] HFSPlus](https://github.com/acidanthera/OcBinaryData/blob/master/Drivers/HfsPlus.efi)
- [[Kext] Lilu](https://github.com/acidanthera/Lilu)
- [[Kext] VirtualSMC](https://github.com/acidanthera/VirtualSMC)
- [[Kext] WhateverGreen](https://github.com/acidanthera/WhateverGreen)
- [[Kext] AppleALC](https://github.com/acidanthera/AppleALC)

<br>

## :rocket: Contributors

| [![Gabriel Maia](https://avatars.githubusercontent.com/u/26732067?size=100)](https://github.com/gabrielmaialva33) |
|-------------------------------------------------------------------------------------------------------------------|
| [Gabriel Maia](https://github.com/gabrielmaialva33)                                                               |

<br/>

<p align="center"><img src="https://raw.githubusercontent.com/gabrielmaialva33/gabrielmaialva33/master/assets/gray0_ctp_on_line.svg?sanitize=true" /></p>
<p align="center">&copy; 2025 <a href="https://github.com/gabrielmaialva33/" target="_blank">Gabriel Maia</a></p>
