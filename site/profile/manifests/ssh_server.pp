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
		key    => 'ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQDXZXNnKPwcRM3+WTYrgbKhNBZeyq7utKdGYjB1vSlMWa9FaX4EAJ+MZotIMKQTXHrZCiw8IxwLvBzVUqqMTG7POmpHOHyaH1PECorDETuF++9NH/MF+hOHgIUlZU8yutRE9YmDaeYZP3QfKmlHCDbp49E354rPjEAxrZU2h4Y9hL1sDEHGDtj6j1K2x3yUVY04bOZeL+UM2wfxJQ7bRhB33Ny7Jv7b/E2Y0Fl007aGmUOUw2tM6G0Lm8XgyLaCq3f/1s3aJYr73otHR68AO3Pk6UlHcIqwzibkS5g+YKcMLAVTbu1hjFK/NIXzODZGtTK72onhORqMtIclBqOsq9fb root@master.puppet.vm',
	}  
}
