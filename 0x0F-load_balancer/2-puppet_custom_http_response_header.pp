# 2-puppet_custom_http_response_header.pp
# Configures Nginx to send a custom HTTP header with the server's hostname

package { 'nginx':
  ensure => installed,
}

service { 'nginx':
  ensure     => running,
  enable     => true,
  subscribe  => File['/etc/nginx/sites-available/default'],
}

file { '/etc/nginx/sites-available/default':
  ensure  => file,
  mode    => '0644',
  require => Package['nginx'],
  content => template('nginx/default_site.erb'),
}
