class vim::vimrc::setup_unless_exists inherits vim {

  file { "$home/.vimrc":
    source  => [
      "puppet:///modules/vim/vimrc",
    ],
    owner   => $user,
    ensure  => present,
    replace => "no", # don't replace existing file
  }

}
