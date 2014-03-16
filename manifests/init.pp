class rssh (
  $ensure = 'latest'
){
  $required = $::operatingsystem ? {
    /(?i-mx:centos|fedora|redhat|scientific)/ => 'rssh',
  }

  package { $required: ensure => $ensure }

}
