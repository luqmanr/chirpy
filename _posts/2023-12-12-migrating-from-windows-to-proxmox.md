---
layout: post
# title: 
tags: [computer, proxmox, linux, windows]
image: 'https://images.spiceworks.com/wp-content/uploads/2023/01/03121747/Hypervisor-Functions.jpg'
---

## 2023-16-12
I've been tinkering with proxmox for a week now! Since my new 2TB SSD arrived, I've instantly installed it on my PC, and the 1TB SSD currently in it still has the old Windows installation on it (so I can revert back to that if I ever needed it).

The first issue I had with proxmox was with networking (it's still not perfect yet right now, but it works).
I struggled to setup the system to use a single MAC address for connecting to my Mikrotik gateway/DHCP server.
Started off with having another virtual MAC address, and that is assigned to `vmbr0`.
But I didn't want to have to manually configure Mikrotik to have 2 entries of MAC address to the same machine.

So I used masquerading on the Proxmox interfaces config, so that every request from any guest VM/system on my proxmox VE, is then translated to use the MAC address of my physical NIC.

I'm still having problems with portforwarding though, since I can't figure out how to assign ports on `vmbr0`, to a guest VM's port

## 2023-12-12
Finally, I'm switching from primarily Windows, to Linux! Because I currently left my PC at my office / old bedroom / my parent's house, I'm constantly remote-desktopping into it from my apartment. But remoting to a Windows machine is kind of annoying. I much prefer having access to servers via SSH as it's much simpler, and more importantly, no GUI related problems.

I've been looking around which Linux distribution I want to run, but then, I realized, it's much better to just run a _Hypervisor_, so I won't be bogged down by my would be choice of distribution. Any other services or apps I want to run that's better on certain distributions (or easier to manage/install), then I will just create another VM.

Obviously, there's going to be some performance impact, and there's sure to be problems (like the GPU partitioning or passthrough for gaming). But I want a new change, and want to explore these realms. Especially, I want to daily drive Linux instead of relying on Windows. So, here's for change!


## Changelog
### 2023-16-12
- sluggishly wrote things that came to mind, mostly about networking
### 2023-12-12
- write what I'm doing for this post