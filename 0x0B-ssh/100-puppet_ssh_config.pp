# Puppet manifest to configure SSH client (~/.ssh/config)

file_line { 'Declare identity file':
  ensure => present,
  path   => '/c/Users/My Delight/.ssh/config',
  line   => '    IdentityFile ~/.ssh/school',
  match  => '^\s*IdentityFile\s+.*',
}

file_line { 'Turn off passwd auth':
  ensure => present,
  path   => '/c/Users/My Delight/.ssh/config',
  line   => '    PasswordAuthentication no',
  match  => '^\s*PasswordAuthentication\s+.*',
}
