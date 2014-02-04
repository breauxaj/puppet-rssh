class rssh {
  $required = $::operatingsystem ? {
    /(?i-mx:centos|fedora|redhat|scientific)/ => 'rssh',
  }

  package { $required: ensure => latest }

}
