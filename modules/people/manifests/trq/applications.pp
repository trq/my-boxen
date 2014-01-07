class people::trq::applications {
  package {
    [
      'the_silver_searcher',
      'tmux',
      'ctags',
      'tree',
      'wget',
      'vim',
      'mobile-shell'
    ]:
  }

  include chrome::canary
  include iterm2::dev
  include alfred
  include skype
  include virtualbox
  include vagrant
  include hipchat
  include onepassword
  include dropbox
  include mplayerx
  include spotify
  include openoffice
  include gimp
  include dash

  vagrant::plugin { 'vagrant-bindfs': }
}
