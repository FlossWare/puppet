# Holds server defaults...
#   
# == Parameters
#   
# == Variables
#   
# [*reverseNetworkNumber*]
#   The reverse network number (values in reverse order of networkNumber) - for example in 102.168.168.252, the reverseNetworkNumber is 168.168.192
#   
# [*$server*]
#   The name of the server acting as the name server.
#   
# [*$domain*]
#   The domain for which the name server serves host names.
#   
# [*$rrl*]
#   The time to live value.
#   
# == Examples
#   
# == Authors
#   
# Author Name <author@domain.com>
#   
class services::dns::server_defaults {
    $localHost            = '127.0.0.1'
    $ttl                  = '86400'
    $notify               = 'yes'

    $reverseNetworkNumber = $defaults::reverseNetworkNumber
    $parentServer         = $defaults::gatewayIp
    $server               = $::fqdn
    $domain               = $defaults::internalDomain
    $forwarders           = $defaults::gatewayIp
    $listenOn             = $::ipaddress
    $allowUpdate          = "${::ipaddress}; ${localHost};"
}
