
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
	name				= "Birmingham"
	pool				= "England"
	target_node			= "cyberops3"
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
	name				= "Newport"
	pool				= "Hidden"
	target_node			= "cyberops3"
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
	name				= "Derby"
	pool				= "England"
	target_node			= "cyberops3"
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
	name				= "Glasgow"
	pool				= "England"
	target_node			= "cyberops3"
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
	name				= "Chelmsford"
	pool				= "England"
	target_node			= "cyberops3"
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
	name				= "Dundee"
	pool				= "England"
	target_node			= "cyberops3"
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
	name				= "Oxford"
	pool				= "England"
	target_node			= "cyberops3"
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
	name				= "Wolverhampton"
	pool				= "England"
	target_node			= "cyberops3"
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
	name				= "Lincoln"
	pool				= "England"
	target_node			= "cyberops3"
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
	name				= "London"
	pool				= "England"
	target_node			= "cyberops3"
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
	name				= "Wakefield"
	pool				= "England"
	target_node			= "cyberops3"
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
	name				= "Coventry"
	pool				= "England"
	target_node			= "cyberops3"
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
	name				= "Brighton"
	pool				= "Hidden"
	target_node			= "cyberops3"
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
	name				= "Nottingham"
	pool				= "Hidden"
	target_node			= "cyberops3"
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
	name				= "Newcastle"
	pool				= "Hidden"
	target_node			= "cyberops3"
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
	name				= "Sunderland"
	pool				= "England"
	target_node			= "cyberops3"
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
	name				= "St-Albans"
	pool				= "England"
	target_node			= "cyberops3"
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
	name				= "Swansea"
	pool				= "England"
	target_node			= "cyberops3"
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
	name				= "Kingston"
	pool				= "England"
	target_node			= "cyberops3"
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
	name				= "Lancaster"
	pool				= "England"
	target_node			= "cyberops3"
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
	name				= "Preston"
	pool				= "England"
	target_node			= "cyberops3"
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
	name				= "Canterbury"
	pool				= "England"
	target_node			= "cyberops3"
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
	name				= "Southampton"
	pool				= "England"
	target_node			= "cyberops3"
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
	name				= "Aberdeen"
	pool				= "England"
	target_node			= "cyberops3"
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
	name				= "Peterborough"
	pool				= "England"
	target_node			= "cyberops3"
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
	name				= "Bradford"
	pool				= "England"
	target_node			= "cyberops3"
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
	name				= "Plymouth"
	pool				= "England"
	target_node			= "cyberops3"
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
	name				= "Salford"
	pool				= "England"
	target_node			= "cyberops3"
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