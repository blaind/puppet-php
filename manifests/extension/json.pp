# == Class: php::extension::json
#
# Install and configure the json PHP extension
#
# === Parameters
#
# [*ensure*]
#   The version of the package to install
#   Could be "latest", "installed" or a pinned version
#   This matches "ensure" from Package
#
# [*package*]
#   The package name in your provider
#
# [*provider*]
#   The provider used to install the package
#
# [*inifile*]
#   The path to the extension ini file
#
# [*settings*]
#   Hash with 'set' nested hash of key => value
#   set changes to agues when applied to *inifile*
#
# === Variables
#
# No variables
#
# === Examples
#
#  include php::extension::json
#
# === Authors
#
# Arthur Andersen <leoc.git@gmail.com>
#
# === Copyright
#
# Copyright 2012-2013 Nodes, unless otherwise noted.
#
class php::extension::json(
  $ensure   = $php::extension::json::params::ensure,
  $package  = $php::extension::json::params::package,
  $provider = $php::extension::json::params::provider,
  $inifile  = $php::extension::json::params::inifile,
  $settings = $php::extension::json::params::settings,
) inherits php::extension::json::params {

  php::extension { 'json':
    ensure   => $ensure,
    package  => $package,
    provider => $provider
  }

  php::config { 'php-extension-json':
    inifile   => $inifile,
    settings  => $settings
  }
}
