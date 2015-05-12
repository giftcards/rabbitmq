class rabbitmq (

  $rabbitmq_erlang_cookie = $rabbitmq::params::rabbitmq_erlang_cookie,
  $services = $rabbitmq::params::services,
  $packages = $rabbitmq::params::packages,

) inherits rabbitmq::params {

  include rabbitmq::packages
  include rabbitmq::config
  include rabbitmq::services

}
