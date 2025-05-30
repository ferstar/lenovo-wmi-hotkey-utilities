# Lenovo wmi hotkey utilities

UPDATE: This patch has been merged in the upstream branch: https://github.com/torvalds/linux/commit/61250669eaa9fd480e0f1c3cec107924b6a06b46

For those people who's kernel version >= 6.15.x, you do not need this manually patch any more.

---
Implement Lenovo utility data WMI calls needed to make LEDs work on Ideapads that support this GUID.

This enables the mic and audio LEDs to be updated correctly.

Tested on below samples.

1. ThinkBook 13X Gen4 IMH
2. ThinkBook 14 G6 ABP
3. ThinkBook 16p Gen4-21J8
4. ThinkBook 16 G8 IRL
5. ThinkBook 14 G6+ AHP
6. ThinkBook 16 G7+ ASP

source: https://lore.kernel.org/lkml/20250222114532.4105-1-xy-jackie@139.com

# Usage

```bash
sudo dkms add .
sudo dkms install lenovo-wmi-hotkey-utilities/1.0
sudo modprobe -v lenovo-wmi-hotkey-utilities
```
