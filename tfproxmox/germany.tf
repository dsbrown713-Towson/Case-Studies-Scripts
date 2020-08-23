
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
	name				= "Hamburg"
	pool				= "Germany"
	target_node			= "cyberops2"
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
	name				= "Munster"
	pool				= "Hidden"
	target_node			= "cyberops2"
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
	name				= "Bielefeld"
	pool				= "Germany"
	target_node			= "cyberops2"
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
	name				= "Cologne"
	pool				= "Germany"
	target_node			= "cyberops2"
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
	name				= "Breman"
	pool				= "Germany"
	target_node			= "cyberops2"
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
	name				= "Dresdan"
	pool				= "Germany"
	target_node			= "cyberops2"
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
	name				= "Ludwigshafen"
	pool				= "Germany"
	target_node			= "cyberops2"
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
	name				= "Augsburg"
	pool				= "Germany"
	target_node			= "cyberops2"
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
	name				= "Potsdam"
	pool				= "Germany"
	target_node			= "cyberops2"
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
	name				= "Berlin"
	pool				= "Germany"
	target_node			= "cyberops2"
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
	name				= "Hagen"
	pool				= "Germany"
	target_node			= "cyberops2"
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
	name				= "Hamm"
	pool				= "Germany"
	target_node			= "cyberops2"
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
	name				= "Duisburg"
	pool				= "Hidden"
	target_node			= "cyberops2"
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
	name				= "Saarbrucken"
	pool				= "Hidden"
	target_node			= "cyberops2"
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
	name				= "Neuss"
	pool				= "Hidden"
	target_node			= "cyberops2"
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
	name				= "Darmstadt"
	pool				= "Germany"
	target_node			= "cyberops2"
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
	name				= "Karlsruhe"
	pool				= "Germany"
	target_node			= "cyberops2"
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
	name				= "Wiesbaden"
	pool				= "Germany"
	target_node			= "cyberops2"
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
	name				= "Bonn"
	pool				= "Germany"
	target_node			= "cyberops2"
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
	name				= "Osnabruck"
	pool				= "Germany"
	target_node			= "cyberops2"
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
	name				= "Leverkusen"
	pool				= "Germany"
	target_node			= "cyberops2"
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
	name				= "Oldenburg"
	pool				= "Germany"
	target_node			= "cyberops2"
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
	name				= "Leipzig"
	pool				= "Germany"
	target_node			= "cyberops2"
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
	name				= "Freiburg"
	pool				= "Germany"
	target_node			= "cyberops2"
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
	name				= "Krefeld"
	pool				= "Germany"
	target_node			= "cyberops2"
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
	name				= "Stuttgart"
	pool				= "Germany"
	target_node			= "cyberops2"
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
	name				= "Aachen"
	pool				= "Germany"
	target_node			= "cyberops2"
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
	name				= "Mulheim"
	pool				= "Germany"
	target_node			= "cyberops2"
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