# Puppet script to create ssh config file

file { '/home/sammking/.ssh/config':
  ensure  => file,
  owner   => 'sammking',
  group   => 'sammking',
  mode    => '0600',
  content => "Host myserver
  HostName your.server.ip.address
  User ubuntu
  IdentityFile ~/.ssh/school
  PasswordAuthentication no
",
}
