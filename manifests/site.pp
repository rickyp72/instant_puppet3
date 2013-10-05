node default {
	class { 'puppet': }
}

#node 'rhel6puppet.localdomain' inherits default {
#	package {'puppet-server':
#		ensure => latest,
#		notify => Service['puppetmaster'],
#	}
#	service { 'puppetmaster':
#		ensure => running,
#		enable => true,
#		subscribe => Package['puppet-server'],
#	}
#}
