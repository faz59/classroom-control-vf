
  1 class users::epelteset {
  2
  3  exec { 'yum -y install epel-release' :
  4         path => '/bin:/usr/bin',
  5                }
  6
  7 }
