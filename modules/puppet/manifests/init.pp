# == Class: puppet
#
# Full description of class puppet here.
# Ricky Parkinson
#
# Puppet 3
# Copyright 2013 Your name here, unless otherwise noted.
class puppet (
	$version 	= 'latest',
	$status		= 'running',
	$environment 	= 'production',
	$server		= 'puppet.rnb.localdomain',
	) {
	package { 'puppet':
		ensure => $version,
		notify => Service['puppet']
	}
	service { 'puppet':
		ensure => running,
		enable => true,
		require => Package['puppet'],
	}
}
