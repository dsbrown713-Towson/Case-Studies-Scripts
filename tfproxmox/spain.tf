
provider "proxmox" {
    pm_api_url = "https://10.55.10.23:8006/api2/json"
    pm_user = "terraformer@pve"
    pm_password = "A1WTsBz#b@ic2ja"
    pm_tls_insecure = "true"
}

resource "proxmox_vm_qemu" "proxmox_vm" {
	bios				= "seabios"
	bootdisk			= "scsi0"
	clone				= "Lin-DNS1-Template"	
	cores				= 2
	count				= 1
	cpu					= "host"
	memory				= 1024
	name				= "Barcelona"
	pool				= "Spain"
	target_node			= "cyberops4"
	scsihw				= "virtio-scsi-pci"
	sockets				= "1"

	disk {
		id              = 0
		size            = 32
		type            = "scsi"
		storage         = "student-disk"
		storage_type    = "zfs"
		iothread        = true
	}
	
	network {
		id              = 0
		model           = "virtio"
		bridge          = "vmbr1"
	}
}

resource "proxmox_vm_qemu" "proxmox_vm" {
	bios				= "seabios"
	bootdisk			= "scsi0"
	clone				= "Lin-FS1-Template"	
	cores				= 2
	count				= 1
	cpu					= "host"
	memory				= 1024
	name				= "Elche"
	pool				= "Hidden"
	target_node			= "cyberops4"
	scsihw				= "virtio-scsi-pci"
	sockets				= "1"

	disk {
		id              = 0
		size            = 32
		type            = "scsi"
		storage         = "student-disk"
		storage_type    = "zfs"
		iothread        = true
	}
	
	network {
		id              = 0
		model           = "virtio"
		bridge          = "vmbr1"
	}
}

resource "proxmox_vm_qemu" "proxmox_vm" {
	bios				= "seabios"
	bootdisk			= "scsi0"
	clone				= "Lin-Research2-Template"	
	cores				= 2
	count				= 1
	cpu					= "host"
	memory				= 1024
	name				= "Fuenlabrada"
	pool				= "Spain"
	target_node			= "cyberops4"
	scsihw				= "virtio-scsi-pci"
	sockets				= "1"

	disk {
		id              = 0
		size            = 32
		type            = "scsi"
		storage         = "student-disk"
		storage_type    = "zfs"
		iothread        = true
	}
	
	network {
		id              = 0
		model           = "virtio"
		bridge          = "vmbr1"
	}
}

resource "proxmox_vm_qemu" "proxmox_vm" {
	bios				= "seabios"
	bootdisk			= "scsi0"
	clone				= "Lin-DNS2-Template"	
	cores				= 2
	count				= 1
	cpu					= "host"
	memory				= 1024
	name				= "Murcia"
	pool				= "Spain"
	target_node			= "cyberops4"
	scsihw				= "virtio-scsi-pci"
	sockets				= "1"

	disk {
		id              = 0
		size            = 32
		type            = "scsi"
		storage         = "student-disk"
		storage_type    = "zfs"
		iothread        = true
	}
	
	network {
		id              = 0
		model           = "virtio"
		bridge          = "vmbr1"
	}
}

resource "proxmox_vm_qemu" "proxmox_vm" {
	bios				= "seabios"
	bootdisk			= "scsi0"
	clone				= "Lin-Apacha-WP-Template"	
	cores				= 2
	count				= 1
	cpu					= "host"
	memory				= 1024
	name				= "Getafe"
	pool				= "Spain"
	target_node			= "cyberops4"
	scsihw				= "virtio-scsi-pci"
	sockets				= "1"

	disk {
		id              = 0
		size            = 32
		type            = "scsi"
		storage         = "student-disk"
		storage_type    = "zfs"
		iothread        = true
	}
	
	network {
		id              = 0
		model           = "virtio"
		bridge          = "vmbr1"
	}
}

resource "proxmox_vm_qemu" "proxmox_vm" {
	bios				= "seabios"
	bootdisk			= "scsi0"
	clone				= "Lin-Apacha-PHP-Template"	
	cores				= 2
	count				= 1
	cpu					= "host"
	memory				= 1024
	name				= "Nou-Barris"
	pool				= "Spain"
	target_node			= "cyberops4"
	scsihw				= "virtio-scsi-pci"
	sockets				= "1"

	disk {
		id              = 0
		size            = 32
		type            = "scsi"
		storage         = "student-disk"
		storage_type    = "zfs"
		iothread        = true
	}
	
	network {
		id              = 0
		model           = "virtio"
		bridge          = "vmbr1"
	}
}

resource "proxmox_vm_qemu" "proxmox_vm" {
	bios				= "seabios"
	bootdisk			= "scsi0"
	clone				= "Lin-WP-PHP-DB-Template"	
	cores				= 2
	count				= 1
	cpu					= "host"
	memory				= 1024
	name				= "Hortaleza"
	pool				= "Spain"
	target_node			= "cyberops4"
	scsihw				= "virtio-scsi-pci"
	sockets				= "1"

	disk {
		id              = 0
		size            = 32
		type            = "scsi"
		storage         = "student-disk"
		storage_type    = "zfs"
		iothread        = true
	}
	
	network {
		id              = 0
		model           = "virtio"
		bridge          = "vmbr1"
	}
}

resource "proxmox_vm_qemu" "proxmox_vm" {
	bios				= "seabios"
	bootdisk			= "scsi0"
	clone				= "Lin-FS3-Template"	
	cores				= 2
	count				= 1
	cpu					= "host"
	memory				= 1024
	name				= "La-Laguna"
	pool				= "Spain"
	target_node			= "cyberops4"
	scsihw				= "virtio-scsi-pci"
	sockets				= "1"

	disk {
		id              = 0
		size            = 32
		type            = "scsi"
		storage         = "student-disk"
		storage_type    = "zfs"
		iothread        = true
	}
	
	network {
		id              = 0
		model           = "virtio"
		bridge          = "vmbr1"
	}
}

resource "proxmox_vm_qemu" "proxmox_vm" {
	bios				= "seabios"
	bootdisk			= "scsi0"
	clone				= "Owncloud-Template"	
	cores				= 2
	count				= 1
	cpu					= "host"
	memory				= 1024
	name				= "Badajoz"
	pool				= "Spain"
	target_node			= "cyberops4"
	scsihw				= "virtio-scsi-pci"
	sockets				= "1"

	disk {
		id              = 0
		size            = 32
		type            = "scsi"
		storage         = "student-disk"
		storage_type    = "zfs"
		iothread        = true
	}
	
	network {
		id              = 0
		model           = "virtio"
		bridge          = "vmbr1"
	}
}

resource "proxmox_vm_qemu" "proxmox_vm" {
	bios				= "seabios"
	bootdisk			= "scsi0"
	clone				= "Win-DNS-Template"	
	cores				= 2
	count				= 1
	cpu					= "host"
	memory				= 1024
	name				= "Madrid"
	pool				= "Spain"
	target_node			= "cyberops4"
	scsihw				= "virtio-scsi-pci"
	sockets				= "1"

	disk {
		id              = 0
		size            = 32
		type            = "scsi"
		storage         = "student-disk"
		storage_type    = "zfs"
		iothread        = true
	}
	
	network {
		id              = 0
		model           = "virtio"
		bridge          = "vmbr1"
	}
}

resource "proxmox_vm_qemu" "proxmox_vm" {
	bios				= "seabios"
	bootdisk			= "scsi0"
	clone				= "Win-Sec-DNS-Template"	
	cores				= 2
	count				= 1
	cpu					= "host"
	memory				= 1024
	name				= "Latina"
	pool				= "Spain"
	target_node			= "cyberops4"
	scsihw				= "virtio-scsi-pci"
	sockets				= "1"

	disk {
		id              = 0
		size            = 32
		type            = "scsi"
		storage         = "student-disk"
		storage_type    = "zfs"
		iothread        = true
	}
	
	network {
		id              = 0
		model           = "virtio"
		bridge          = "vmbr1"
	}
}

resource "proxmox_vm_qemu" "proxmox_vm" {
	bios				= "seabios"
	bootdisk			= "scsi0"
	clone				= "Win-FS-Template"	
	cores				= 2
	count				= 1
	cpu					= "host"
	memory				= 1024
	name				= "Carabanchel"
	pool				= "Spain"
	target_node			= "cyberops4"
	scsihw				= "virtio-scsi-pci"
	sockets				= "1"

	disk {
		id              = 0
		size            = 32
		type            = "scsi"
		storage         = "student-disk"
		storage_type    = "zfs"
		iothread        = true
	}
	
	network {
		id              = 0
		model           = "virtio"
		bridge          = "vmbr1"
	}
}

resource "proxmox_vm_qemu" "proxmox_vm" {
	bios				= "seabios"
	bootdisk			= "scsi0"
	clone				= "Win-Research-Template"	
	cores				= 2
	count				= 1
	cpu					= "host"
	memory				= 1024
	name				= "San-Sebastian"
	pool				= "Hidden"
	target_node			= "cyberops4"
	scsihw				= "virtio-scsi-pci"
	sockets				= "1"

	disk {
		id              = 0
		size            = 32
		type            = "scsi"
		storage         = "student-disk"
		storage_type    = "zfs"
		iothread        = true
	}
	
	network {
		id              = 0
		model           = "virtio"
		bridge          = "vmbr1"
	}
}

resource "proxmox_vm_qemu" "proxmox_vm" {
	bios				= "seabios"
	bootdisk			= "scsi0"
	clone				= "Rocket-Systems-Template"	
	cores				= 2
	count				= 1
	cpu					= "host"
	memory				= 1024
	name				= "Sabadell"
	pool				= "Hidden"
	target_node			= "cyberops4"
	scsihw				= "virtio-scsi-pci"
	sockets				= "1"

	disk {
		id              = 0
		size            = 32
		type            = "scsi"
		storage         = "student-disk"
		storage_type    = "zfs"
		iothread        = true
	}
	
	network {
		id              = 0
		model           = "virtio"
		bridge          = "vmbr1"
	}
}

resource "proxmox_vm_qemu" "proxmox_vm" {
	bios				= "seabios"
	bootdisk			= "scsi0"
	clone				= "Win-WS-Template"	
	cores				= 2
	count				= 1
	cpu					= "host"
	memory				= 1024
	name				= "Mostoles"
	pool				= "Hidden"
	target_node			= "cyberops4"
	scsihw				= "virtio-scsi-pci"
	sockets				= "1"

	disk {
		id              = 0
		size            = 32
		type            = "scsi"
		storage         = "student-disk"
		storage_type    = "zfs"
		iothread        = true
	}
	
	network {
		id              = 0
		model           = "virtio"
		bridge          = "vmbr1"
	}
}

resource "proxmox_vm_qemu" "proxmox_vm" {
	bios				= "seabios"
	bootdisk			= "scsi0"
	clone				= "Lin-WS1-Template"	
	cores				= 2
	count				= 1
	cpu					= "host"
	memory				= 1024
	name				= "Leganes"
	pool				= "Spain"
	target_node			= "cyberops4"
	scsihw				= "virtio-scsi-pci"
	sockets				= "1"

	disk {
		id              = 0
		size            = 32
		type            = "scsi"
		storage         = "student-disk"
		storage_type    = "zfs"
		iothread        = true
	}
	
	network {
		id              = 0
		model           = "virtio"
		bridge          = "vmbr1"
	}
}

resource "proxmox_vm_qemu" "proxmox_vm" {
	bios				= "seabios"
	bootdisk			= "scsi0"
	clone				= "Lin-WS1-Template"	
	cores				= 2
	count				= 1
	cpu					= "host"
	memory				= 1024
	name				= "Cordoba"
	pool				= "Spain"
	target_node			= "cyberops4"
	scsihw				= "virtio-scsi-pci"
	sockets				= "1"

	disk {
		id              = 0
		size            = 32
		type            = "scsi"
		storage         = "student-disk"
		storage_type    = "zfs"
		iothread        = true
	}
	
	network {
		id              = 0
		model           = "virtio"
		bridge          = "vmbr1"
	}
}

resource "proxmox_vm_qemu" "proxmox_vm" {
	bios				= "seabios"
	bootdisk			= "scsi0"
	clone				= "Lin-WS1-Template"	
	cores				= 2
	count				= 1
	cpu					= "host"
	memory				= 1024
	name				= "Salamanca"
	pool				= "Spain"
	target_node			= "cyberops4"
	scsihw				= "virtio-scsi-pci"
	sockets				= "1"

	disk {
		id              = 0
		size            = 32
		type            = "scsi"
		storage         = "student-disk"
		storage_type    = "zfs"
		iothread        = true
	}
	
	network {
		id              = 0
		model           = "virtio"
		bridge          = "vmbr1"
	}
}

resource "proxmox_vm_qemu" "proxmox_vm" {
	bios				= "seabios"
	bootdisk			= "scsi0"
	clone				= "Lin-Sec-DNS1-Template"	
	cores				= 2
	count				= 1
	cpu					= "host"
	memory				= 1024
	name				= "Granada"
	pool				= "Spain"
	target_node			= "cyberops4"
	scsihw				= "virtio-scsi-pci"
	sockets				= "1"

	disk {
		id              = 0
		size            = 32
		type            = "scsi"
		storage         = "student-disk"
		storage_type    = "zfs"
		iothread        = true
	}
	
	network {
		id              = 0
		model           = "virtio"
		bridge          = "vmbr1"
	}
}

resource "proxmox_vm_qemu" "proxmox_vm" {
	bios				= "seabios"
	bootdisk			= "scsi0"
	clone				= "Lin-Research1-Template"	
	cores				= 2
	count				= 1
	cpu					= "host"
	memory				= 1024
	name				= "Vigo"
	pool				= "Spain"
	target_node			= "cyberops4"
	scsihw				= "virtio-scsi-pci"
	sockets				= "1"

	disk {
		id              = 0
		size            = 32
		type            = "scsi"
		storage         = "student-disk"
		storage_type    = "zfs"
		iothread        = true
	}
	
	network {
		id              = 0
		model           = "virtio"
		bridge          = "vmbr1"
	}
}

resource "proxmox_vm_qemu" "proxmox_vm" {
	bios				= "seabios"
	bootdisk			= "scsi0"
	clone				= "Lin-WS2-Template"	
	cores				= 2
	count				= 1
	cpu					= "host"
	memory				= 1024
	name				= "Valladolid"
	pool				= "Spain"
	target_node			= "cyberops4"
	scsihw				= "virtio-scsi-pci"
	sockets				= "1"

	disk {
		id              = 0
		size            = 32
		type            = "scsi"
		storage         = "student-disk"
		storage_type    = "zfs"
		iothread        = true
	}
	
	network {
		id              = 0
		model           = "virtio"
		bridge          = "vmbr1"
	}
}

resource "proxmox_vm_qemu" "proxmox_vm" {
	bios				= "seabios"
	bootdisk			= "scsi0"
	clone				= "Lin-WS2-Template"	
	cores				= 2
	count				= 1
	cpu					= "host"
	memory				= 1024
	name				= "Pamplona"
	pool				= "Spain"
	target_node			= "cyberops4"
	scsihw				= "virtio-scsi-pci"
	sockets				= "1"

	disk {
		id              = 0
		size            = 32
		type            = "scsi"
		storage         = "student-disk"
		storage_type    = "zfs"
		iothread        = true
	}
	
	network {
		id              = 0
		model           = "virtio"
		bridge          = "vmbr1"
	}
}

resource "proxmox_vm_qemu" "proxmox_vm" {
	bios				= "seabios"
	bootdisk			= "scsi0"
	clone				= "Lin-WS2-Template"	
	cores				= 2
	count				= 1
	cpu					= "host"
	memory				= 1024
	name				= "Huelva"
	pool				= "Spain"
	target_node			= "cyberops4"
	scsihw				= "virtio-scsi-pci"
	sockets				= "1"

	disk {
		id              = 0
		size            = 32
		type            = "scsi"
		storage         = "student-disk"
		storage_type    = "zfs"
		iothread        = true
	}
	
	network {
		id              = 0
		model           = "virtio"
		bridge          = "vmbr1"
	}
}

resource "proxmox_vm_qemu" "proxmox_vm" {
	bios				= "seabios"
	bootdisk			= "scsi0"
	clone				= "Lin-Sec-DNS2-Template"	
	cores				= 2
	count				= 1
	cpu					= "host"
	memory				= 1024
	name				= "Terrassa"
	pool				= "Spain"
	target_node			= "cyberops4"
	scsihw				= "virtio-scsi-pci"
	sockets				= "1"

	disk {
		id              = 0
		size            = 32
		type            = "scsi"
		storage         = "student-disk"
		storage_type    = "zfs"
		iothread        = true
	}
	
	network {
		id              = 0
		model           = "virtio"
		bridge          = "vmbr1"
	}
}

resource "proxmox_vm_qemu" "proxmox_vm" {
	bios				= "seabios"
	bootdisk			= "scsi0"
	clone				= "Lin-FS2-Template"	
	cores				= 2
	count				= 1
	cpu					= "host"
	memory				= 1024
	name				= "Alcorcon"
	pool				= "Spain"
	target_node			= "cyberops4"
	scsihw				= "virtio-scsi-pci"
	sockets				= "1"

	disk {
		id              = 0
		size            = 32
		type            = "scsi"
		storage         = "student-disk"
		storage_type    = "zfs"
		iothread        = true
	}
	
	network {
		id              = 0
		model           = "virtio"
		bridge          = "vmbr1"
	}
}

resource "proxmox_vm_qemu" "proxmox_vm" {
	bios				= "seabios"
	bootdisk			= "scsi0"
	clone				= "Lin-DNS3-Template"	
	cores				= 2
	count				= 1
	cpu					= "host"
	memory				= 1024
	name				= "Bilbao"
	pool				= "Spain"
	target_node			= "cyberops4"
	scsihw				= "virtio-scsi-pci"
	sockets				= "1"

	disk {
		id              = 0
		size            = 32
		type            = "scsi"
		storage         = "student-disk"
		storage_type    = "zfs"
		iothread        = true
	}
	
	network {
		id              = 0
		model           = "virtio"
		bridge          = "vmbr1"
	}
}

resource "proxmox_vm_qemu" "proxmox_vm" {
	bios				= "seabios"
	bootdisk			= "scsi0"
	clone				= "Lin-Sec-DNS3-Template"	
	cores				= 2
	count				= 1
	cpu					= "host"
	memory				= 1024
	name				= "Logrono"
	pool				= "Spain"
	target_node			= "cyberops4"
	scsihw				= "virtio-scsi-pci"
	sockets				= "1"

	disk {
		id              = 0
		size            = 32
		type            = "scsi"
		storage         = "student-disk"
		storage_type    = "zfs"
		iothread        = true
	}
	
	network {
		id              = 0
		model           = "virtio"
		bridge          = "vmbr1"
	}
}

resource "proxmox_vm_qemu" "proxmox_vm" {
	bios				= "seabios"
	bootdisk			= "scsi0"
	clone				= "Lin-Research3-Template"	
	cores				= 2
	count				= 1
	cpu					= "host"
	memory				= 1024
	name				= "Arganzuela"
	pool				= "Spain"
	target_node			= "cyberops4"
	scsihw				= "virtio-scsi-pci"
	sockets				= "1"

	disk {
		id              = 0
		size            = 32
		type            = "scsi"
		storage         = "student-disk"
		storage_type    = "zfs"
		iothread        = true
	}
	
	network {
		id              = 0
		model           = "virtio"
		bridge          = "vmbr1"
	}
}