1. 배포할 Key를 생성함(원격시 사용할 계정으로 해야함!)
$ [root@sqream .ssh]# ssh-keygen -t rsa -b 2048
Generating public/private rsa key pair.
Enter file in which to save the key (/root/.ssh/id_rsa):
Enter passphrase (empty for no passphrase):
Enter same passphrase again:
Your identification has been saved in /root/.ssh/id_rsa.
Your public key has been saved in /root/.ssh/id_rsa.pub.
The key fingerprint is:
SHA256:g3Yx+4TxGmJ16ABJQDNqbVInHbAmNeY7JNfz9P2XSF0 root@sqream
The key's randomart image is:
+---[RSA 2048]----+
| .=X=+.          |
| .*oBo   .       |
|.= O o..* .     E|
|. O . +=.O.   . .|
|   o  =.S.o. . . |
|    .o o *  o . .|
|        . .  o o |
|              .  |
|                 |
+----[SHA256]-----+

2. ssh-copy-id를 통해 인증서를 배포(타겟에서 사용할 계정으로 해야함!!)
$ [root@sqream .ssh]# ssh-copy-id -i ~/.ssh/id_rsa.pub -p 0000 root@000.000.000.000
/usr/bin/ssh-copy-id: INFO: Source of key(s) to be installed: "/root/.ssh/id_rsa.pub"
/usr/bin/ssh-copy-id: INFO: attempting to log in with the new key(s), to filter out any that are already installed
/usr/bin/ssh-copy-id: INFO: 1 key(s) remain to be installed -- if you are prompted now it is to install the new keys
root@000.000.000.000's password:

Number of key(s) added: 1

Now try logging into the machine, with:   "ssh -p '0000' 'root@000.000.000.000'"
and check to make sure that only the key(s) you wanted were added.

3. 테스트(패스워드 없이 실행됨)(파일 업로드, 명령어 실행 가능)
$ [root@sqream ~]# scp -P 0000 test root@000.000.000.000:/home/
$ [root@sqream ~]# ssh -p 0000 root@000.000.000.000 "ls -al /home"

4. 안될경우(/var/log/secure 참고)
    1. 타겟서버에서 인증서 파일 권한 확인’
        1. chmod 700 ~/.ssh
        2. chmod 600 ~/.ssh/authorized_keys


