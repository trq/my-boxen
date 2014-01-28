class people::trq::python {
  include python::2_7_3
  include python::3_3_0

  # Install any arbitrary Python version
  #python { '2.7.6': }

  # Install a Python package
  #python::package { 'virtualenv':
  #  python_version => '2.7.3',
  #}

  python::package { 'docopt':
    python_version => '2.7.3'
  }

  # Set the global version of Python
  #class { 'python::global': version => '2.7.3' }

  # Set version of Python within a specific directory
  #python::local { "/Users/${::boxen_user}/src/vyro": version => '3.3.3' }
  python::local { "/Users/${::boxen_user}/src/vyro": version => '2.7.3' }
}
