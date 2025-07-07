# Puppet manifest to install Nginx and configure root & redirect

# Ensure nginx is installed and running
package { 'nginx':
  ensure => installed,
}

service { 'nginx':
  ensure     => running,
  enable     => true,
  hasrestart => true,
  require    => Package['nginx'],
}

# Create index.html with "Hello World!" text
file { '/var/www/html/index.html':
  ensure  => file,
  content => "Hello World!\n",
  owner   => 'www-data',
  group   => 'www-data',
  mode    => '0644',
  require => Package['nginx'],
}

# Ensure /redirect_me returns a 301 redirect to a target URL
file_line { 'Add redirect to default site':
  path  => '/etc/nginx/sites-available/default',
  line  => '    location /redirect_me { return 301 https://www.youtube.com/watch?v=QH2-TGUlwu4; }',
  match => 'location /redirect_me',
  require => Package['nginx'],
  notify  => Service['nginx'],
}
