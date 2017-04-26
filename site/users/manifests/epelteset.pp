
   class users::epelteset {
  
    exec { 'yum -y install epel-release' :
           path => '/bin:/usr/bin',
                  }
  
   }
