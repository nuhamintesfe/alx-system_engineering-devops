# 7-puppet_install_nginx_web_server.pp
# Puppet manifest to install and configure Nginx with Hello World and a 301 redirect

package { 'nginx':
  ensure => installed,
}

file { '/var/www/html/index.html':
  ensure  => file,
  content => "Hello World!\n",
  require => Package['nginx'],
}

file { '/etc/nginx/sites-available/default':
  ensure  => file,
  content => @(EOT)
    server {
      listen 80 default_server;
      listen [::]:80 default_server;

      root /var/www/html;
      index index.html index.htm;

      server_name _;

      location = / {
        try_files \$uri \$uri/ =404;
      }

      location = /redirect_me {
        return 301 https://www.youtube.com/watch?v=QH2-TGUlwu4;
      }
    }
  | EOT,
  notify  => Service['nginx'],
  require => Package['nginx'],
}

service { 'nginx':
  ensure    => running,
  enable    => true,
  subscribe => File['/etc/nginx/sites-available/default'],
}
