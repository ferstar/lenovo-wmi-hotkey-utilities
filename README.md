# Lenovo wmi hotkey utilities

Implement Lenovo utility data WMI calls needed to make LEDs work on Ideapads that support this GUID.

This enables the mic and audio LEDs to be updated correctly.

Tested on below samples.

ThinkBook 13X Gen4 IMH

ThinkBook 14 G6 ABP

ThinkBook 16p Gen4-21J8

ThinkBook 16 G8 IRL

ThinkBook 16 G7+ ASP

source: https://lore.kernel.org/lkml/20250222114532.4105-1-xy-jackie@139.com

# Usage

```bash
sudo dkms add .
sudo dkms install lenovo-wmi-hotkey-utilities/1.0
sudo modprobe -v lenovo-wmi-hotkey-utilities
```
