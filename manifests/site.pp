node default {
}

node 'master.puppet.vm' {
  include role::master_server
  file {'/root/README':
    ensure => file,
    content => "Welcome to the world of ${fqdn}\n",
  }
}
node 'mine.puppet.vm' {
  include role::minecraft_server
}
node /^web/ {
  include role::app_server
}

node /^db/ {
  include role::app_server
}
