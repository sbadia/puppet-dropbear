# Puppet-dropbear [![Build Status](https://travis-ci.org/sbadia/puppet-dropbear.png)](https://travis-ci.org/sbadia/puppet-gitlab)

Manage [dropbear](https://matt.ucc.asn.au/dropbear/dropbear.html) SSH server via Puppet

## Usage

### Using default values
```
include 'dropbear'
```

### Overide values
```
  class {
    'dropbear':
      port            => '443',
      extra_args      => '-s',
      banner          => '/etc/banner',
  }
```

## Other class parameters
* no\_start: boolean, 0 for start dropbear, and 1 for stop (init), (default: 0, start)
* port: integer, ssh TCP port listens on (default: 22)
* extra\_args: string, dropbear ssh args (refs: man dropbear)
* banner: string, banner file containing a message to be sent to clients before they connect
* rsakey: string, RSA hostkey file (default: /etc/dropbear/dropbear\_rsa\_host\_key)
* dsskey: string, DSS hostkey file (default: /etc/dropbear/dropbear\_dss\_host\_key)
* receive\_window: string, Receive window size, this is a tradeoff between memory and network performance (default: 65536)
