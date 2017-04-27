class memcached {
  package { 'memcached':
    ensure => present,
  }
  file { '/etc/sysconfig/memcached':
    ensure => file,
    source => 'puppet:///modules/memcached/memcached',
  }
  service { 'memcached':
    ensure => running,
    enabled => true,
  }  
}
