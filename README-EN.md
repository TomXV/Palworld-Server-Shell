# Palworld Server Shell
**This script is designed to work on Debian/Ubuntu 22.04 (or Ubuntu Server 22.04).**

I have validated its functionality in an environment with a virtual machine running Ubuntu Server 22.04 on Proxmox VE 8.1.

With the execution of this shell, you can easily set up a dedicated Palworld server.

---
## Prerequisite Knowledge
You should be familiar with setting up Ubuntu is required.

## Notes
> [!WARNING]
>> This script is untested on Windows Sub-system for Linux (WSL).
>>
>> I do not take any responsibility if you choose to run it in an unverified environment.

> [!CAUTION]
> The server will not operate with root privileges (#). Please execute the script with user privileges ($).

## Prerequisite Environment
To run the shell, ensure that curl is installed.

If it's not installed, use `sudo apt install curl` to install it.

## Commands
Copy and execute the following command:
```sh
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/TomXV/Palworld-Server-Shell/main/Palworld.sh)"
```

## Troubleshooting
> [!NOTE]
> The symbolic link destination for steamclient.so is set to the one included with PalServer.
>
> If, for any reason, it fails to load, follow the steps below:

```sh
unlink ~/.steam/sdk64/steamclient.so
ln ~/Steam/steamapps/common/Steamworks\ SDK\ Redist/linux64/steamclient.so ~/.steam/sdk64/steamclient.so
```

> An error will be displayed during the initial startup, but if you see `.steam/sdk64/steamclient.so OK.  (First tried local 'steamclient.so')`, this operation is unnecessary.
