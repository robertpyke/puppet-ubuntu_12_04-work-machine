
class apt_get::upgrade inherits apt_get {

  exec { 'apt-get upgrade':
    command => 'apt-get upgrade',
    path => '/usr/local/bin/:/usr/bin/:/bin/',
    timeout => 0 # Disable the command timeout
  }

}
