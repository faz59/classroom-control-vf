class nginx {
  package { 'nginx':
    ensure => present,
  }
  
  file { '/var/www':
    ensure => directory,
  }
  
  file {'/var/www/index.html':
    ensure => file,
    source => 'puppet:///modules/nginx/index.html'
  }

  file {'/etc/nginx/conf.d/default.conf':
    ensure => file,
    source => 'puppet:///modules/nginx/default.conf'
  }


  file {'/etc/nginx/conf.d/nginx.conf':
    ensure => file,
    source => 'puppet:///modules/nginx/nginx.conf'
  }
}

    
