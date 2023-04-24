# Install flask version 2.1.0 from pip3

$packages = [ 'python3', 'python3-pip']

# Install python3 and pip3 if not already installed
package { $packages:
  ensure => 'installed',
}

# Install flask version 2.1.0 with pip3
package { 'Flask':
  ensure   => '2.1.0',
  provider => 'pip3',
  require  => Package['python3-pip']
}
