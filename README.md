# VortexTracker

[![GitHub Release](https://img.shields.io/github/v/release/wladasm/vortextracker?include_prereleases&sort=date&display_name=release)](https://github.com/wladasm/vortextracker/releases)

_The best music tracker for 8-bit AY/YM chips._

___

> [!CAUTION]
> This version of the program is experimental and may contain bugs, including issues that can lead to incorrect loading and/or saving of files. It is not recommended to use it for working with important data. Always make sure to keep proper backups.

___

This fork (the [modern](https://github.com/wladasm/vortextracker/tree/modern) branch) is an attempt to port VortexTracker to a modern version of Delphi and to enable building 64-bit binaries.

At the moment, the project builds without issues (0 warnings, 0 hints) in Delphi 10.3 for both target platforms — Win32 and Win64. It is expected to build in newer Delphi versions as well (possibly with minor adjustments), but this has not been tested.

The project is based on [VortexTracker 2.6.1](https://github.com/Volutar/vortextracker/tree/TS3) by **Volutar**.

The current version has beta status and is named **2.6.1 dev x64**. On first launch, it creates the `Vortex Tracker 2.6.1 dev` directory (note the suffix) in the *Documents* folder and in `AppData\Roaming`. Its configuration is independent from the stable version’s configuration.

## Build Instructions

1. Open the package file `MidiComponents2010.dpk` located in the `Delphi-Midi-Component\Package` directory.
2. Build it.
3. Install the built package (**Install**).
4. Switch the platform to Win32 and build again.
5. Close everything (**Close All**) without saving.
6. Unlike previous versions, there is no need to copy any `.dcu` files.
7. Open `VT.dproj` in the project root directory.
8. Select the desired platform (Win32 / Win64).
9. Build the project.

## Downloads

**Original builds by Ivan Pirog**:  
https://github.com/ivanpirog/vortextracker/releases

**Nightly VT builds by Dexus (Volutar)**:  
https://volutar.myds.me/vortextracker

***

**New experimental 32-bit and 64-bit builds by WladAsm**:  
https://github.com/wladasm/vortextracker/releases
