#Removes sendmail rpms

class mta::remove_sendmail {

  $sendmail_rpms = ['sendmail-cf']

  package { $sendmail_rpms:
    ensure => absent,
  }
}
