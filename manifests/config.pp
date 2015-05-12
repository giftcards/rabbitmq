class rabbitmq::config {

  require(rabbitmq::packages)

  File { notify => Service[$rabbitmq::params::services], }

  if ( $rabbitmq::rabbitmq_erlang_cookie != false ) {
    file {
      '/var/lib/rabbitmq/.erlang.cookie':
        ensure => file,
        content => $rabbitmq::rabbitmq_erlang_cookie,
        owner => rabbitmq,
        group => rabbitmq,
        mode => '0600';
    }
  }

  file { '/usr/local/bin/rabbitmqadmin':
    ensure => file,
    source => 'puppet:///modules/rabbitmq/rabbitmqadmin',
    owner  => root,
    group  => root,
    mode   => '0755',
  }
}
