sudo wget https://dlcdn.apache.org/zeppelin/zeppelin-0.10.1/zeppelin-0.10.1-bin-all.tgz --no-check-certificate
sudo tar -zxvf zeppelin-0.10.1-bin-all.tgz
cd zeppelin-0.10.1-bin-all/
cd conf
cp shiro.ini.template shiro.ini
vi shiro.ini
$ admin = adminpassword, admin
cp zeppelin-site.xml.template zeppelin-site.xml
vi zeppelin-site.xml
==============
<configuration>

<property>
  <name>zeppelin.server.addr</name>
  <value>000.000.000.000</value>
  <description>Server binding address</description>
</property>

<property>
  <name>zeppelin.server.port</name>
  <value>0000</value>
  <description>Server port.</description>
</property>
=================
cd bin
sudo ./zeppelin-daemon.sh start
