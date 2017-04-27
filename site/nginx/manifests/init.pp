class nginx {
  File {
    owner  => 'root',
    group  => 'root',
    mode   => '0644',
  }
  
  package {'nginx':
    ensure => present,
  }
  
  $documentroot='/var/www'
  $nginxconf='nginx.conf'
  $nginxdef='default.conf'
  
  file { $documentroot:
    ensure => directory,
  }

  file {'${documentroot}/index.html':
    ensure => file,
    source => 'puppet:///modules/nginx/index.html',
  }

  file { '/etc/nginx':
    ensure => directory,
  }

  file { '/etc/nginx/${nginxconf}':
    ensure => file,
    source => 'puppet:///modules/nginx/nginx.conf}',
    require => Package['nginx'],
    notify => Service['nginx'],
  }
  
  file { '/etc/nginx/conf.d':
    ensure => directory,
  }
  
  file { '/etc/nginx/conf.d/${nginxdef}':
    ensure => file,
    source => 'puppet:///modules/nginx/default.conf',
    require => Package['nginx'],
    notify => Service['nginx'],
  }
}
