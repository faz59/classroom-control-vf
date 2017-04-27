class users::admins {

users::managed_user { 'jose':}

users::managed_user { 'chen':}

users::managed_user { 'faz':
group => testers,
}

group { 'testers':

ensure => present,
}

}
