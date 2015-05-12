Facter.add('rabbitmq_erlang_cookie') do
  setcode 'cat /var/lib/rabbitmq/.erlang.cookie 2> /dev/null || echo "nil"'
end
