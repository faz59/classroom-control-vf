class skeleton {
file { '/etc/skell':
  ensure  => dir,
  owner   => 'root',
  group   => 'root',
  mode    => '0440',
  source  => 'puppet:///modules/skell',
}
file { '/etc/skell/.bashrc':
  ensure  => file,
  owner   => 'root',
  group   => 'root',
  mode    => '0440',
  source  => 'puppet:///modules/skell/.bashrc',
}
}
