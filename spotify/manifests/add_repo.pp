class spotify::add_repo {

  include apt_get::update

  exec { "sudo add-apt-repository 'deb http://repository.spotify.com stable non-free'":
    path    => ["/usr/bin", "/usr/sbin"],
  }
  ->
  exec { "sudo apt-key adv --keyserver keyserver.ubuntu.com --recv-keys 94558F59":
    path    => ["/usr/bin", "/usr/sbin"],
  }
  ~> # notify (i.e. do again if necessary)
  Exec['apt-get update']

}
