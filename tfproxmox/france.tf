
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
	name				= "Marseille"
	pool				= "France"
	target_node			= "cyberops1"
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
	name				= "Dijon"
	pool				= "Hidden"
	target_node			= "cyberops1"
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
	name				= "Cherbourg"
	pool				= "France"
	target_node			= "cyberops1"
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
	name				= "Toulouse"
	pool				= "France"
	target_node			= "cyberops1"
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
	name				= "Montreuil"
	pool				= "France"
	target_node			= "cyberops1"
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
	name				= "Mulhouse"
	pool				= "France"
	target_node			= "cyberops1"
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
	name				= "Caen"
	pool				= "France"
	target_node			= "cyberops1"
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
	name				= "Avignon"
	pool				= "France"
	target_node			= "cyberops1"
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
	name				= "Courbevoie"
	pool				= "France"
	target_node			= "cyberops1"
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
	name				= "Paris"
	pool				= "France"
	target_node			= "cyberops1"
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
	name				= "Nice"
	pool				= "France"
	target_node			= "cyberops1"
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
	name				= "Toulon"
	pool				= "France"
	target_node			= "cyberops1"
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
	name				= "Dunkirk"
	pool				= "Hidden"
	target_node			= "cyberops1"
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
	name				= "Limoges"
	pool				= "Hidden"
	target_node			= "cyberops1"
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
	name				= "Dunkirk"
	pool				= "Hidden"
	target_node			= "cyberops1"
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
	name				= "LaRochelle"
	pool				= "France"
	target_node			= "cyberops1"
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
	name				= "Orleans"
	pool				= "France"
	target_node			= "cyberops1"
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
	name				= "Annecy"
	pool				= "France"
	target_node			= "cyberops1"
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
	name				= "LeMans"
	pool				= "France"
	target_node			= "cyberops1"
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
	name				= "Colombes"
	pool				= "France"
	target_node			= "cyberops1"
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
	name				= "SaintPaul"
	pool				= "France"
	target_node			= "cyberops1"
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
	name				= "Pau"
	pool				= "France"
	target_node			= "cyberops1"
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
	name				= "Perpignan"
	pool				= "France"
	target_node			= "cyberops1"
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
	name				= "Nanterre"
	pool				= "France"
	target_node			= "cyberops1"
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
	name				= "Rouen"
	pool				= "France"
	target_node			= "cyberops1"
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
	name				= "Montpellier"
	pool				= "France"
	target_node			= "cyberops1"
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
	name				= "Angers"
	pool				= "France"
	target_node			= "cyberops1"
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
	name				= "Boulogne"
	pool				= "France"
	target_node			= "cyberops1"
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