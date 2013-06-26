class apt_get::update inherits apt_get {

  exec { 'apt-get update':
    command => 'apt-get update',
    path => '/usr/local/bin/:/usr/bin/:/bin/',
    timeout => 0 # Disable the command timeout
  }

}
