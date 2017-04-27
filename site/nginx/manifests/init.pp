class nginx {

  package {'nginx'
    ensure => 'installed'

  }

  service { 'nginx':
    ensure => running,
    enable => true,
    require => Package['nginx']
    subscribe => File['/etc/nginx/nginx.conf', '/etc/nginx/conf.d/default.conf']
  }

  file  {'/var/www':
    ensure => 'directory',
    require => Servie['nginx']
  }

  file  {'/etc/nginx/nginx.conf':
    ensure => 'file',
    source => 'puppet:///modules/nginx/nginx.conf'
    require => Servie['nginx']
  }

  file  {'/etc/nginx/conf.d/default.conf':
    ensure => 'file',
    source => 'puppet:///modules/nginx/default.conf'
    require => Servie['nginx']
  }

}
