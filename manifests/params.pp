# Module:: dropbear
# Manifest:: params.pp
#
# Author:: Sebastien Badia (<seb@sebian.fr>)
# Date:: 2013-04-08 16:33:49 +0200
# Maintainer:: Sebastien Badia (<seb@sebian.fr>)
#

# Class:: dropbear::params
#
#
class dropbear::params {
  case $::osfamily {
    'Debian': {
      $package_name   = 'dropbear'
      $service_name   = 'dropbear'
      $rsakey         = '/etc/dropbear/dropbear_rsa_host_key'
      $dsskey         = '/etc/dropbear/dropbear_dss_host_key'
      $cfg_file       = '/etc/default/dropbear'
      $cfg_template   = 'dropbear/debian.erb'
    }
    'RedHat': {
      $package_name   = 'dropbear'
      $service_name   = 'dropbear'
      $rsakey         = '/etc/dropbear/dropbear_rsa_host_key'
      $dsskey         = '/etc/dropbear/dropbear_dss_host_key'
      $cfg_file       = '/etc/sysconfig/dropbear'
      $cfg_template   = 'dropbear/redhat.erb'
    }
    default: {
      fail("Unsupported osfamily: ${::osfamily}")
    }
  }
} # Class:: dropbear::params
