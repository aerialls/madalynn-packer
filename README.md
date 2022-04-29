# Madalynn Packer

This repository contains Packer files to build Ubuntu images for my personal infrastructure on Proxmox. Two LTS versions are available.

* **Ubuntu Server 18.04 (ubuntu-18.04)** based on preseeds (this setup can be also used for Ubuntu Server 18.10, 19.04 and 19.10).
* **Ubuntu Server 20.04 (ubuntu-20.04)** based on *autoinstalls* using cloud-init.
* **Ubuntu Server 22.04 (ubuntu-22.04)** based on *autoinstalls* using cloud-init.

Feel free to fork or edit what you need.

## Build

Each version can be used the same way. To launch the build of the Ubuntu image, just run the following command inside the `ubuntu-XX.04` directory.

```sh
$ packer build -var-file=secrets.json ubuntu.json
```

You will need a `secrets.json` file like the following.

```json
{
  "proxmox_username": "packer@pve",
  "proxmox_password": "fQk9f5Wd22aBgv"
}
```

 You can also override the following parameters directly within the `secrets.json` file.

```json
{
  "proxmox_vm_id": "201",
  "proxmox_template_name": "ubuntu-22.04",
  "ubuntu_iso_file": "ubuntu-22.04-live-server-amd64.iso"
}
```
