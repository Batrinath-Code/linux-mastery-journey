# Network Configuration

### Basic Network Teminology

- Learned:
  - `Host` - Any device that communicates via a network with another device.
  - `Network` - Collection of two or more hosts that are able to commuincate with each other.
  - `Internet` - It consist of a publicy accessible network that connect millions of hosts throughout the world.
  - `WIFI` - Wireless network
  - `Server` - A host that provide a service to another host or client is called a server.
  - `Service` - A feature provided by a host is a service.
  - `Client` - A client is a host is accessing a server.
  - `Router` - A gateway that connects hosts from one network to another network.

### Networking Features Terminology

- Learned:
  - `Packet` - A network packet is used to send network communicaton between hosts.
  - `IP Address` - Unique number assigned to host on a network.
  - `Mask` - Is a number system that can be used to define which IP address are considere to be within a single network.
  - `Hostname` - Human-readable identifiers like www.example.com are much easier to remember thatn IP address like 192.0.2.2
  - `URL` - Uniform Resource Locator also called web address is used to locate a resource, like web page on the internet
  - `DHCP` - Network protocol that automaticaly assigns IP address to other network configuration details to devices on a network
  - `DNS` - Provides the service of translating domina name into IP addresses.
  - `Ethernet` - Most common way to physically connect that hosts into a network.
  - `TCP/IP` - Transmission Control Protocol/Internet Protocol used to define how network commuinication should take place between hosts.

### IP Addresses

- Learned:
  - Two different types of IP address: IPv4 and IPv6.
    - `IPv4` , a total of four 8-bit numbers and 32-bit address (4 x 8 = 32), 8-bit refers to numbers from 0 to 255.
    - `IPV6` , 128-bit address.
  - Why hasn't the world embraced the superior technology of IPv6?
    - `NAT`: Allows multiple devices on a private network to share a single pbulic IP address by translating private IP addtesses to a public IP at the router, enabling more devices to access the internet despite IPv4 address limitations.
    - `Porting`: Switching over from one technology to another.

### Network Configuration Files

- Learned:
  - `/etc/hosts` - File contains a table of hostnames to IP addtesses.
  - `/etc/resolv.conf` - File contains DNS server configuration.
  - `/etc/nsswitc.conf` - Name Service Switch configuration file, which determines the order and sources for resolving various types of information.

### Network Tools

- Learned:
  - `ifconfig` - Display network configuration information.
  - `ip ` - command is a modern, unified tools that replaces and extends several legacy networking commands.
  - `ip addr show` - alternative for ifconfig
  - `route` - Display and manipulate the IP routing table.
  - `ip route show` - alternatinve
  - `ping` - command can be used to determine if another machine is reachable.
  - `netstat` - command is a powerful tool that provide a large amount of network information.
  - `ss` - show socket statistics and supports all the major packet and socket types.
  - `dig` - Perform queries on the DNS server to determine if the information needed is available on the server.
  - `host` - command works with DNS to associate a hostname with an IP address.
  - `ssh` - command allow you to connect to another machine across the network, log in and then perform taks on the remote machine.
