define rssh::config (
  $allow = [''],
  $umask = '022',
  $chrootpath = '',
  $users = ['']
) {
  $config = $::operatingsystem ? {
    /(?i-mx:centos|fedora|redhat|scientific)/ => '/etc/rssh.conf',
  }

  file { $config:
    ensure  => present,
    owner   => 'root',
    group   => 'root',
    mode    => '0644',
    content => template('rssh/rssh.erb'),
  }

}
