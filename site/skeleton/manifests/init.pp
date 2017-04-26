class skeleton {
file { '/etc/skel':
  ensure  => dir,
  owner   => 'root',
  group   => 'root',
  mode    => '0440',
  source  => 'puppet:///modules/skel',
}
file { '/etc/skell/.bashrc':
  ensure  => file,
  owner   => 'root',
  group   => 'root',
  mode    => '0440',
  source  => 'puppet:///modules/skel/.bashrc',
}
}
