class nginx {

package { 'nginx':
ensure => present, 
}

file { '/var/www':
ensure => directory
}

file { '/var/www/index.html' :
ensure => file, 
source => 'puppet:///modules/nginx/index.html'
}  

file { '/etc/nginx/nginx.conf':
    ensure  => file,
    source  => 'puppet:///modules/nginx/nginx.conf',
    
  }


  file { '/etc/nginx/conf.d/default.conf':
    ensure  => file,
    source  => 'puppet:///modules/nginx/default.conf',
  }

service { 'nginx':
    ensure => running,
    enable => true,
  }
  } 
