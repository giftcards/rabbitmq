class rabbitmq::services {

  service { $rabbitmq::services:
    ensure     => running,
    enable     => true,
    hasrestart => false,
    require    => Package[$rabbitmq::packages],
  }
}
