###What is `createinstallmedia` and why do I need it?

Apple has bundled the `createinstallmedia` binary in all of it's Mac App Store-downloadable OS installs. Using the `createinstallmedia` command you can make a bootable install drive out of the various OS install applications.

While each binary is specific to the version of OS it was bundled with, the syntax for use is the same. [Apple has a support page](https://support.apple.com/en-us/HT201372) on how to create a bootable installer, but I'll summarize here.

1. Download the OS Installer from the Mac App Store (default download path is to the /Applications folder)
2. Mount a (wiped) USB flash drive or be prepared so specify a partition on an internal/external drive
3. The basic syntax is as follows: `createinstallmedia --volume /Path/to/volume --applicationpath /Path/to/OSInstaller.app`


I've used this to create a multiple-OS-install drive with 4 versions of OS X (including the macOS Developer Beta), and the 14.04 LTS release of Ubuntu. I also keep a partition on my keychain flashdrive with an El Capitan bootable install, just in case I need it. YMMV, let me know if you find problems.