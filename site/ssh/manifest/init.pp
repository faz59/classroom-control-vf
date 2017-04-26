class ssh {
package { 'openssh':
ensure => present,
}
file { '/etc/ssh/sshd_config':
ensure => file,
owner => 'root',
group => 'root',
mode => '0644',
require => Package['openssh'],
source => 'puppet:///modules/ssh/sshd_config',
}
service { 'sshd':
ensure => running,
enable => true,
require => File['/etc/ssh/sshd_config'],
}
}
