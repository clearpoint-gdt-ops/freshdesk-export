Exec {
    path    => "/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin",
}

import 'classes/*.pp'

node default {

    include apt

    package { xterm:
        require     => Class['apt'],
    }

    package { vim:
        require     => Class['apt'],
    }

    include perl
    include lighttp

}
