# Install flask version 2.1.0 from pip3

$packages = [ 'python3', 'python3-pip']

# Install python3 and pip3 if not already installed
package { $packages:
  ensure => 'installed',
}

# Install flask version 2.1.0 with pip3
exec { 'install_flask':
  command => '/usr/bin/pip3 install flask==2.1.0',
  path    => '/usr/local/bin:/usr/bin:/bin',
  require => Package['python3-pip']
}
