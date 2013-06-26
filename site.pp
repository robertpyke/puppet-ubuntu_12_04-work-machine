$user = "jc155857"
$home = "/home/jc155857"  # no trailing slash

include apt_get::update
include apt_get::upgrade
include vim
include vim::vimrc::setup_unless_exists
