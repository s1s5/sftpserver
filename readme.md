
# how to

## in admin
Endpoint / Authorized keys -> new

    # Name
    anything

    # User
    access_user

    # Key type
    ssh-rsa

    # Key (do not include "ssh-rsa" and "who@where")
    AAAAB3NzaC1yc2EAAAADAQABAAABAQD8zH+4CE22nchLtIjusa5VYM.....

    e.g) id_rsa.pub
    ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQD8zH+4CE22nchLtIjusa5VYMNP5MZfKAf2a8U+WEp8bw/jBoQJb9AFT3/XOUYk6SLsvGafqtmTLvdDt3Oxj/6BTvlLhyMKIKxjm6HfgaLRkrrbzCK35ZMhs1Lcbmh+gJiPSOv4/fABBkp2h6ubf/TGaTKrIYSEApSuFEce2vhPAbrzLFKt2Q6BxsxAERoSsdgN2EgMBXAYb1o7wd/gYli4aoPuJrknanLuTrJSi12I35VuNyPWfv/RMj0IDKNzkYboz0XqVdCpYiaUJNaRj/aU+87cXtTXh7/KN5EWfYcmuuK9TQIFhgPS7VIo8cP8e6vxj/i6JLMiTuIKqLh0exwx who@where




Endpoint / Storage access infos -> new

    # Name
    anything

    # Users
    access_user

    # Storage class
    storages.backends.s3boto.S3BotoStorage

    # Kwargs
    access_key: AKIAAAAAAAAAAAAAAAAA
    secret_key: xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
    bucket_name: s3-test
    host: s3-us-west-2.amazonaws.com
    default_acl: private
    location: test_sftp
    url_protocol: https


## run sftpserver
`$ python manage.py run_sftpserver --storage-mode -k /etc/ssh/ssh_host_rsa_key`

## access storage
`$ sftp -i ~/.ssh/id_rsa -P 2222 access_user@localhost`

