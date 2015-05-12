class rabbitmq::params {
  $rabbitmq_erlang_cookie = false
  $packages = [ 'rabbitmq-server' ]
  $services = [ 'rabbitmq-server' ]
}
