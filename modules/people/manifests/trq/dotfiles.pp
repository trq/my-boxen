class people::trq::dotfiles {
  repository { "dotfiles_repo":
    path => "/Users/${::boxen_user}/etc/dotfiles",
    source => 'trq/dotfiles',
    provider => 'git'
  }

  exec { "install_vim_plugins":
    command => "/opt/boxen/homebrew/bin/vim +BundleInstall +qall 2&> /dev/null",
    require => Package["vim"]
  }

  exec { "install_dotfiles":
    command => "/Users/${::boxen_user}/etc/dotfiles/bin/link-dotfiles",
    require => Repository["dotfiles_repo"]
  }
}
