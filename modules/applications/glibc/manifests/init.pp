class glibc {
    $packages = [
        "glibc",
    ]

    package { $packages:
        ensure => latest,
    }
}