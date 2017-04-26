class memcached {
    package {'memcached':
        ensure => present,
    }   

    file {'/etc/sysconfig':
        ensure => directory,
        owner => 'root',
        group => 'root',
        mode => '0755',            
    } 

    file { '/etc/sysconfig/memcached':
        ensure => file,
        owner => 'root',
        group => 'root',
        mode => '0644',
        source => 'puppet:///modules/memcached/memcached',
        require => Package['memcached'],       
    }

    service {'memcached-service':
        ensure => running,
        enable => true,
        subscribe => File['/etc/sysconfig/memcached'],
    }
}