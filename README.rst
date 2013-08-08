Geodjango for puppet
====================
Puppet_ module to create a spatial PostGIS database for use with GeoDjango_.
Create a spatially-aware ``template_postgis`` database that you can use as a template to create further databases.

.. _Puppet: http://www.puppetlabs.com/
.. _GeoDjango: https://docs.djangoproject.com/en/dev/ref/contrib/gis/install/postgis/

Works well with `puppet-postgres`_.

.. _`puppet-postgres`: https://github.com/akumria/puppet-postgres

Usage::

    class {"geodjango":
        require => Class["postgresql::server"]
    }
