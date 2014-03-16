rssh
====

rssh is a restricted shell for use with OpenSSH, allowing only scp and/or sftp.
It now also includes support for rdist, rsync, and cvs.

Notes
-----

Not ready for use!

Samples
-------
```
include rssh
```
The allow mask (rsync, rdist, cvs, sftp, scp)
```
rssh:config { 'default':
  allow => ['allowscp'],
  umask => '022',
  users => [
    'sample:002:00001:/home/sample',
    'another:022:00011:/home/another
  ],
}
```

License
-------
GPL3

Contact
-------
breauxaj AT gmail DOT com
