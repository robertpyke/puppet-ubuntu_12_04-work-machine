$user = "jc155857"
$home = "/home/jc155857"  # no trailing slash


include apt_get
include drivers
include vim
include vim::vimrc::setup_unless_exists
include spotify
include chromium
