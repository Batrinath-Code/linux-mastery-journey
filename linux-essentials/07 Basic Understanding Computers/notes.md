# Computer Components

### Processor
- Learned:
    - More than one processor the system is referred to as a Multiprocessor
    - More than one processor is combined into a single overall processor chip, then it is called multi-core.
    - two type: x86 and x86_64
    - `arch` - print which family the cpu
    - `lscpu` - more information about the cpu
    - `head -n 20 /proc/cpuinfo` first 20 lines of the cpuinfo


### Random Access Memory
- Learned:
    - 32bit arch systems can use up to 4GB
    - 64bit arch can handle much more RAM than we currently use
    - Virtual RAM is swap memory
    - `free -m` - view amount of RAM in your system
    - `free -g`

### Buses
- Learned:
    - Buses that allows communication between computers or the components inside a compute.
    - PCI and USB
    - `lspci` - View all of the devices connected by the PCI bus
    - `lspci -k` - show device along with kernel driver and modules
    - `lsusb` - Display the devices connected to the system via USB
    - cold-plug meaning the system must be shut down in order to connect or disconnect a device.
    - hot-plug they can be connected or disconnected while the system in running

### Linux Kernel
- Learned:
    - `lsmod` - view currently loaded modules

### Hard Drives
- Learned:
    - Hard disk also called hard disk, disk devices, or storage devices.
    - type: HDD , SSD , SSHD, CD, microSD
    - Partitions is a logical division of the storage space
    - Partitioning technology called MBR and GPT
    - `fdisk, cfdisk, sfdisk` - working with MBR partitoned disks.
    - `gdisk, cgdisk , sgdisk` - working with GPT
    - `gparted` powerful tool with GUI

### Video Display Devices
- Learned:
    - Three types of video cables commoly used:
    - analog 15-pin VGA
    - 20-pin DVI
    - 19 or 29-pins HDMI
    - 20-pin DP

### Power Supplies
- Learned:
    - Convert AC (120v, 240v) into DC.
    - Computer uses a various voltages (3.3v, 5v, 12v)