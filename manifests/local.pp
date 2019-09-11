user { 'kitchen_test':
  ensure           => 'present',
}

class { 'sudo':
  config_file_replace => false,
  purge               => false,
}

sudo::conf { 'kitchen_test':
  priority => 10,
  content  => 'kitchen_test ALL=(ALL) NOPASSWD:ALL',
}

include sudo
