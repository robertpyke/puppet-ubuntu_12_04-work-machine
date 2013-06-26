class vagrant (
  $default_deb_uri = $vagrant::params::default_deb_uri
) inherits vagrant::params {

  include virtualbox

  exec { "wget '$default_deb_uri' --output-document='vagrant.deb'":
    cwd => "/tmp",
    creates => "/tmp/vagrant.deb",
    path => '/usr/local/bin/:/usr/bin/:/bin/',
  }
  ->
  package { 'vagrant':
    provider  => dpkg,
    ensure    => latest,
    source    => "/tmp/vagrant.deb",
    require   => Package['virtualbox'],
  }
  ->
  exec { "vagrant plugin install vagrant-vbguest":
    path => '/usr/local/bin/:/usr/bin/:/bin/',
  }

}
