# Puppet script to create ssh config file

file { '/home/sammking/.ssh/config':
    ensure  => file,
    owner   => 'sammking',
    group   => 'sammking',
    mode    => '0600',
    content => "Host myserver
    HostName 44.204.0.219
    User ubuntu
    dentityFile ~/.ssh/school
    PasswordAuthentication no
",
}
