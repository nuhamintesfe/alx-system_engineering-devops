# Installs nginx and adds X-Served-By custom header using Puppet

exec { 'update':
  command => '/usr/bin/apt-get update -y',
}

package { 'nginx':
  ensure => installed,
  require => Exec['update'],
}

file { '/var/www/html/index.html':
  ensure  => file,
  content => "Hello World!\n",
  require => Package['nginx'],
}

exec { 'add_header':
  command => "sed -i '/server_name _;/a add_header X-Served-By \"${::hostname}\";' /etc/nginx/sites-available/default",
  unless  => "grep 'X-Served-By' /etc/nginx/sites-available/default",
  require => Package['nginx'],
}

service { 'nginx':
  ensure => running,
  enable => true,
  require => [Package['nginx'], Exec['add_header']],
}
