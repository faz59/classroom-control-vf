class profile::base {
  #notify { "Hello, my name is ${::hostname}": }
  $message = hiera('message')
  notify { $message: }
}
