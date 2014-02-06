class people::trq::php {
  require homebrew

  #homebrew::tap { "homebrew/dupes": }
  #homebrew::tap { "josegonzalez/homebrew-php": }

  $packages = [
    "php55",
    "php55-mcrypt",
    "php55-xdebug",
    "php55-intl",
    "composer"
  ]

  package { $packages:
    ensure => present
  }
}
