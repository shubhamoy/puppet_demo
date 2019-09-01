class profile::ssh_server {
	package {'openssh-server':
		ensure => present,
	}
	service { 'sshd':
		ensure => 'running',
		enable => 'true',
	}
	ssh_authorized_key { 'root@master.puppet.vm':
		ensure => present,
		user   => 'root',
		type   => 'ssh-rsa',
		key    => 'AAAAB3NzaC1yc2EAAAADAQABAAABAQDPNjssHDy/saLBAAu4AmJj03m7ZBU0IvLDibBYZhMpaIQPTm0d8IGACDaMaxEAXkq9FUKs1yTu0eRNCbUlxw9JTAhixOIakDX6TAPPxblOGHM2y4JGB4jIEiAOD3rvz/rlIDqA4zyaOHaZz+sWHLIpnrcj4cH6NGB9hInLUydrH+eICe7l6M+SKhRZjLh4aR3Iiwaj0a3oDRryk0kJhSNuMgU12Rnz1Ok+BWMg3tWMhKzao3lpjEvtuA7hoUeDJnzyja1d/pS3VNRmGksHRsgUEYIz5SkJ3PR7zCsgRiWPndY357w7p3AzoBOw2WPw+dnLm/lDOrzAPjGmNMdE4bIb',
	}  
}
