class users::admins {
  users::managed_user{'joe':}
  users::managed_user{'alice':}
    group => 'staff',
 }
 users::namaged_user{'aaron':
  group => 'staff',
 }
 group {'staff':
  ensure => present,
  }
 }
