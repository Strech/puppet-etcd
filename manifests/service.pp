# == Class: etcd::service
#
# Class to manage the etcd service daemon
#
class etcd::service {
  service { 'etcd':
    ensure => $etcd::service_ensure,
    enable => $etcd::service_enable,
    start => '/etc/init.d/etcd start',
    stop => '/etc/init.d/etcd stop',
    status => '/etc/init.d/etcd status',
    pattern => '/usr/bin/etcd',
  }
}
