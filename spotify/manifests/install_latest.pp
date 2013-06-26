include apt_get::update

class spotify::install_latest {

  package { spotify-client:
    ensure  => latest,
  }

}

