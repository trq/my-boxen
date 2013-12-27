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

  file { "/Users/${::boxen_user}/.vimrc":
    ensure => 'link',
    target  => "/Users/${::boxen_user}/etc/dotfiles/vimrc",
    require => Repository["dotfiles_repo"],
    notify => Exec['install_vim_plugins']
  }

  file { "/Users/${::boxen_user}/.vim":
    ensure => 'link',
    target  => "/Users/${::boxen_user}/etc/dotfiles/vim",
    require => Repository["dotfiles_repo"]
  }

  file { "/Users/${::boxen_user}/.bashrc":
    ensure => 'link',
    target  => "/Users/${::boxen_user}/etc/dotfiles/mac-bashrc",
    require => Repository["dotfiles_repo"]
  }

  file { "/Users/${::boxen_user}/.bash_profile":
    ensure => 'link',
    target  => "/Users/${::boxen_user}/etc/dotfiles/bash_profile",
    require => Repository["dotfiles_repo"]
  }

  file { "/Users/${::boxen_user}/.gitconfig":
    ensure => 'link',
    target  => "/Users/${::boxen_user}/etc/dotfiles/mbp.gitconfig",
    require => Repository["dotfiles_repo"]
  }

  file { "/Users/${::boxen_user}/.inputrc":
    ensure => 'link',
    target  => "/Users/${::boxen_user}/etc/dotfiles/inputrc",
    require => Repository["dotfiles_repo"]
  }

  file { "/Users/${::boxen_user}/.tmux.conf":
    ensure => 'link',
    target  => "/Users/${::boxen_user}/etc/dotfiles/tmux.conf",
    require => Repository["dotfiles_repo"]
  }

  file { "/Users/${::boxen_user}/Library/Preferences/com.googlecode.iterm2.plist":
    ensure => 'link',
    target  => "/Users/${::boxen_user}/etc/dotfiles/mbp.com.googlecode.iterm2.plist",
    require => Repository["dotfiles_repo"]
  }
}
