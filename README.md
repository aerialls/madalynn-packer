# Madalynn Packer

This repository contains Packer files to build Ubuntu images for my personal infrastructure on Proxmox.

Feel free to fork or edit what you need.

## Build

To launch the build of the Ubuntu image, just run the following command.

```sh
$ packer build -var-file=secrets.json ubuntu.json
```

You will need a `secrets.json` file like the following.

```json
{
    "username": "packer@pve",
    "password": "fQk9f5Wd22aBgv"
}
```
