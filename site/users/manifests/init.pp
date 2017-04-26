class users {
  user  { 'fundamentals':
    ensure => present,
    # password =>'puppet8#labb'
    # groups => ['Users'],
  }
}
