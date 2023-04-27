# Puppet manifest to configure SSH client

# Set up the SSH client configuration file

file { '/etc/ssh/ssh_config':
  ensure  => present,
  owner   => 'root',
  group   => 'root',
  mode    => '0644',
  # Specify the default settings for all SSH connections
  content => "
# Default settings for all SSH connections
Host *
    IdentityFile ~/.ssh/school
    PasswordAuthentication no
",
}

