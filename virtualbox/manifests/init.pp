class virtualbox(
  $default_deb_uri = $virtualbox::params::default_deb_uri
) inherits virtualbox::params {

  exec { "wget '$default_deb_uri' --output-document='virtualbox.deb'":
    cwd => "/tmp",
    creates => "/tmp/virtualbox.deb",
    path => '/usr/local/bin/:/usr/bin/:/bin/',
  }
  ~>
  package { 'virtualbox':
    provider  => dpkg,
    ensure    => held,
    source    => "/tmp/virtualbox.deb",
  }

}
