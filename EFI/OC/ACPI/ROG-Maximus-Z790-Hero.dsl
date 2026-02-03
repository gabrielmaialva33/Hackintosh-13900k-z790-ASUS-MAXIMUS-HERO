/*
 * Intel ACPI Component Architecture
 * AML/ASL+ Disassembler version 20251212 (64-bit version)
 * Copyright (c) 2000 - 2025 Intel Corporation
 * 
 * Disassembling to symbolic ASL+ operators
 *
 * Disassembly of /Volumes/EFI/EFI/OC/ACPI/ROG-Maximus-Z790-Hero.aml
 *
 * Original Table Header:
 *     Signature        "SSDT"
 *     Length           0x00000828 (2088)
 *     Revision         0x02
 *     Checksum         0x50
 *     OEM ID           "MaLd0n"
 *     OEM Table ID     "Olarila"
 *     OEM Revision     0x00000000 (0)
 *     Compiler ID      "INTL"
 *     Compiler Version 0x20241212 (539234834)
 */
DefinitionBlock ("", "SSDT", 2, "MaLd0n", "Olarila", 0x00000000)
{
    External (_SB_.PC00, DeviceObj)
    External (_SB_.PC00.LPCB, DeviceObj)
    External (_SB_.PC00.MC__, DeviceObj)
    // External (_SB_.PC00.PEG2.PEGP, DeviceObj)  // REMOVED - was blocking RTX 4090
    External (_SB_.PC00.SBUS, DeviceObj)
    External (_SB_.PC00.XHCI._PRW, IntObj)
    External (_SB_.PC00.XHCI.RHUB, DeviceObj)
    External (HPTE, UnknownObj)
    External (MC__, DeviceObj)
    External (STAS, UnknownObj)

    Name (MALD, Package (0x04)
    {
        "Olarila.com - All about Vanilla Hackintosh", 
        "Professional Hackintosh Services - https://tinyurl.com/2m5unas6", 
        "Patched by MaLd0n", 
        "Donations - https://tinyurl.com/ysjsryck"
    })
    Scope (\)
    {
        If (_OSI ("Darwin"))
        {
            HPTE = Zero
            STAS = One
        }
    }

    Scope (\_SB)
    {
        Device (EC)
        {
            Name (_HID, "MALD0001")  // _HID: Hardware ID
            Method (_STA, 0, NotSerialized)  // _STA: Status
            {
                If (_OSI ("Darwin"))
                {
                    Return (0x0F)
                }
                Else
                {
                    Return (Zero)
                }
            }
        }
    }

    Scope (\_SB)
    {
        Processor (CP00, 0x00, 0x00000510, 0x06){}
        Processor (CP01, 0x01, 0x00000510, 0x06){}
        Processor (CP02, 0x02, 0x00000510, 0x06){}
        Processor (CP03, 0x03, 0x00000510, 0x06){}
        Processor (CP04, 0x04, 0x00000510, 0x06){}
        Processor (CP05, 0x05, 0x00000510, 0x06){}
        Processor (CP06, 0x06, 0x00000510, 0x06){}
        Processor (CP07, 0x07, 0x00000510, 0x06){}
        Processor (CP08, 0x08, 0x00000510, 0x06){}
        Processor (CP09, 0x09, 0x00000510, 0x06){}
        Processor (CP10, 0x0A, 0x00000510, 0x06){}
        Processor (CP11, 0x0B, 0x00000510, 0x06){}
        Processor (CP12, 0x0C, 0x00000510, 0x06){}
        Processor (CP13, 0x0D, 0x00000510, 0x06){}
        Processor (CP14, 0x0E, 0x00000510, 0x06){}
        Processor (CP15, 0x0F, 0x00000510, 0x06){}
        Processor (CP16, 0x10, 0x00000510, 0x06){}
        Processor (CP17, 0x11, 0x00000510, 0x06){}
        Processor (CP18, 0x12, 0x00000510, 0x06){}
        Processor (CP19, 0x13, 0x00000510, 0x06){}
        Processor (CP20, 0x14, 0x00000510, 0x06){}
        Processor (CP21, 0x15, 0x00000510, 0x06){}
        Processor (CP22, 0x16, 0x00000510, 0x06){}
        Processor (CP23, 0x17, 0x00000510, 0x06){}
        Processor (CP24, 0x18, 0x00000510, 0x06){}
        Processor (CP25, 0x19, 0x00000510, 0x06){}
        Processor (CP26, 0x1A, 0x00000510, 0x06){}
        Processor (CP27, 0x1B, 0x00000510, 0x06){}
        Processor (CP28, 0x1C, 0x00000510, 0x06){}
        Processor (CP29, 0x1D, 0x00000510, 0x06){}
        Processor (CP30, 0x1E, 0x00000510, 0x06){}
        Processor (CP31, 0x1F, 0x00000510, 0x06){}
        Method (_STA, 0, NotSerialized)  // _STA: Status
        {
            If (_OSI ("Darwin"))
            {
                Return (0x0F)
            }
            Else
            {
                Return (Zero)
            }
        }
    }

    Scope (\_SB)
    {
        Device (USBX)
        {
            Name (_ADR, Zero)  // _ADR: Address
            Method (_DSM, 4, NotSerialized)  // _DSM: Device-Specific Method
            {
                If (!Arg2)
                {
                    Return (Buffer (One)
                    {
                         0x03                                             // .
                    })
                }

                Return (Package (0x08)
                {
                    "kUSBSleepPowerSupply", 
                    0x13EC, 
                    "kUSBSleepPortCurrentLimit", 
                    0x0834, 
                    "kUSBWakePowerSupply", 
                    0x13EC, 
                    "kUSBWakePortCurrentLimit", 
                    0x0834
                })
            }

            Method (_STA, 0, NotSerialized)  // _STA: Status
            {
                If (_OSI ("Darwin"))
                {
                    Return (0x0F)
                }
                Else
                {
                    Return (Zero)
                }
            }
        }
    }

    Scope (\_SB.CP00)
    {
        If (_OSI ("Darwin"))
        {
            Method (_DSM, 4, NotSerialized)  // _DSM: Device-Specific Method
            {
                If (!Arg2)
                {
                    Return (Buffer (One)
                    {
                         0x03                                             // .
                    })
                }

                Return (Package (0x02)
                {
                    "plugin-type", 
                    One
                })
            }
        }
    }

    Scope (\_SB.PC00)
    {
        Scope (MC)
        {
            Method (_STA, 0, NotSerialized)  // _STA: Status
            {
                If (_OSI ("Darwin"))
                {
                    Return (Zero)
                }
                Else
                {
                    Return (0x0F)
                }
            }
        }

        Device (MCHC)
        {
            Name (_ADR, Zero)  // _ADR: Address
            Method (_STA, 0, NotSerialized)  // _STA: Status
            {
                If (_OSI ("Darwin"))
                {
                    Return (0x0F)
                }
                Else
                {
                    Return (Zero)
                }
            }
        }
    }

    Scope (\_SB.PC00)
    {
        Device (XSPI)
        {
            Name (_ADR, 0x001F0005)  // _ADR: Address
            Method (_STA, 0, NotSerialized)  // _STA: Status
            {
                If (_OSI ("Darwin"))
                {
                    Return (0x0F)
                }
                Else
                {
                    Return (Zero)
                }
            }
        }
    }

    Scope (\_SB.PC00)
    {
        Device (MAC1)
        {
            Name (_ADR, 0x00140002)  // _ADR: Address
            Method (_STA, 0, NotSerialized)  // _STA: Status
            {
                If (_OSI ("Darwin"))
                {
                    Return (0x0F)
                }
                Else
                {
                    Return (Zero)
                }
            }
        }
    }

    Scope (\_SB.PC00)
    {
        Device (MAC2)
        {
            Name (_ADR, 0x000A0000)  // _ADR: Address
            Method (_STA, 0, NotSerialized)  // _STA: Status
            {
                If (_OSI ("Darwin"))
                {
                    Return (0x0F)
                }
                Else
                {
                    Return (Zero)
                }
            }
        }
    }

    If ((CondRefOf (\_OSI, Local0) && _OSI ("Darwin")))
    {
        Device (\_SB.USBW)
        {
            Name (_HID, "PNP0D10" /* XHCI USB Controller with debug */)  // _HID: Hardware ID
            Name (_UID, "WAKE")  // _UID: Unique ID
            Method (_PRW, 0, NotSerialized)  // _PRW: Power Resources for Wake
            {
                Return (\_SB.PC00.XHCI._PRW) /* External reference */
            }
        }
    }

    Scope (\_SB.PC00.LPCB)
    {
        Device (PMCR)
        {
            Name (_HID, EisaId ("APP9876"))  // _HID: Hardware ID
            Method (_STA, 0, NotSerialized)  // _STA: Status
            {
                If (_OSI ("Darwin"))
                {
                    Return (0x0B)
                }
                Else
                {
                    Return (Zero)
                }
            }

            Name (_CRS, ResourceTemplate ()  // _CRS: Current Resource Settings
            {
                Memory32Fixed (ReadWrite,
                    0xFE000000,         // Address Base
                    0x00010000,         // Address Length
                    )
            })
        }
    }

    Scope (\_SB.PC00.LPCB)
    {
        Device (FWHD)
        {
            Name (_HID, EisaId ("INT0800") /* Intel 82802 Firmware Hub Device */)  // _HID: Hardware ID
            Name (_CRS, ResourceTemplate ()  // _CRS: Current Resource Settings
            {
                Memory32Fixed (ReadOnly,
                    0xFF000000,         // Address Base
                    0x01000000,         // Address Length
                    )
            })
            Method (_STA, 0, NotSerialized)  // _STA: Status
            {
                If (_OSI ("Darwin"))
                {
                    Return (0x0B)
                }
                Else
                {
                    Return (Zero)
                }
            }
        }
    }

    Scope (\_SB.PC00.LPCB)
    {
        Device (DMAC)
        {
            Name (_HID, EisaId ("PNP0200") /* PC-class DMA Controller */)  // _HID: Hardware ID
            Name (_CRS, ResourceTemplate ()  // _CRS: Current Resource Settings
            {
                IO (Decode16,
                    0x0000,             // Range Minimum
                    0x0000,             // Range Maximum
                    0x01,               // Alignment
                    0x20,               // Length
                    )
                IO (Decode16,
                    0x0081,             // Range Minimum
                    0x0081,             // Range Maximum
                    0x01,               // Alignment
                    0x11,               // Length
                    )
                IO (Decode16,
                    0x0093,             // Range Minimum
                    0x0093,             // Range Maximum
                    0x01,               // Alignment
                    0x0D,               // Length
                    )
                IO (Decode16,
                    0x00C0,             // Range Minimum
                    0x00C0,             // Range Maximum
                    0x01,               // Alignment
                    0x20,               // Length
                    )
                DMA (Compatibility, NotBusMaster, Transfer8_16, )
                    {4}
            })
            Method (_STA, 0, NotSerialized)  // _STA: Status
            {
                If (_OSI ("Darwin"))
                {
                    Return (0x0B)
                }
                Else
                {
                    Return (Zero)
                }
            }
        }
    }

    Scope (\_SB.PC00.SBUS)
    {
        Device (BUS0)
        {
            Name (_CID, "smbus")  // _CID: Compatible ID
            Name (_ADR, Zero)  // _ADR: Address
            Method (_STA, 0, NotSerialized)  // _STA: Status
            {
                If (_OSI ("Darwin"))
                {
                    Return (0x0F)
                }
                Else
                {
                    Return (Zero)
                }
            }
        }

        Device (BUS1)
        {
            Name (_CID, "smbus")  // _CID: Compatible ID
            Name (_ADR, One)  // _ADR: Address
            Method (_STA, 0, NotSerialized)  // _STA: Status
            {
                If (_OSI ("Darwin"))
                {
                    Return (0x0F)
                }
                Else
                {
                    Return (Zero)
                }
            }
        }
    }

    // REMOVED: PEG2.PEGP scope that was blocking RTX 4090 with class-code 0xFFFFFFFF
    // This allows NVDAAL driver to properly attach to the GPU

    Scope (\_SB.PC00.XHCI.RHUB)
    {
        Method (_STA, 0, NotSerialized)  // _STA: Status
        {
            If (_OSI ("Darwin"))
            {
                Return (Zero)
            }
            Else
            {
                Return (0x0F)
            }
        }
    }
}

