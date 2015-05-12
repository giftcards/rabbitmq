class rabbitmq::packages {
  package { $rabbitmq::packages: ensure => installed, }
}
