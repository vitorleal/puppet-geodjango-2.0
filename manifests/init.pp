class geodjango {
    Exec {
      path => "/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin",
    }

    package {[
          "libproj-dev",
          "binutils",
          "postgresql-9.1-postgis2",
          "gdal-bin",
        ]:
        ensure => installed,
    }

    file {"/tmp/install-postgis.sh":
        ensure  => present,
        source  => "puppet:///modules/geodjango/create_template_postgis.sh",
        owner   => postgres,
        require => Class['postgresql-9.1-postgis2'];
    }
}
