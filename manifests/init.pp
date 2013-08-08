class geodjango {
    Exec {
      path => "/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin",
    }

    package {[
        "libproj-dev",
        "binutils",
        "postgis",
        "gdal-bin",]:
        ensure => installed,
    }

    file {"/tmp/install-postgis.sh":
        ensure => present,
        source => "puppet:///modules/geodjango/create_template_postgis.sh",
        owner => postgres
    }
}
