#!/bin/sh

mkdir -p /var/log/bogus

msg () {
  MSG[0]="Connection timed out"
  MSG[1]="Connection refused"
  MSG[2]="Host is down"
  MSG[3]="No route to host"
  MSG[4]="com.mysql.jdbc.exceptions.jdbc4.CommunicationsException: Communications link failure
The last packet sent successfully to the server was 0 milliseconds ago.
The driver has not received any packets from the server.
        at sun.reflect.NativeConstructorAccessorImpl.newInstance0(Native Method)
        at sun.reflect.NativeConstructorAccessorImpl.newInstance(NativeConstructorAccessorImpl.java:57)
        at sun.reflect.DelegatingConstructorAccessorImpl.newInstance(DelegatingConstructorAccessorImpl.java:45)
        at java.lang.reflect.Constructor.newInstance(Constructor.java:525)
        at com.mysql.jdbc.Util.handleNewInstance(Util.java:411)
        at com.mysql.jdbc.SQLError.createCommunicationsException(SQLError.java:1116)
        at com.mysql.jdbc.MysqlIO.<init>(MysqlIO.java:344)
        at com.mysql.jdbc.ConnectionImpl.coreConnect(ConnectionImpl.java:2333)
        at com.mysql.jdbc.ConnectionImpl.connectOneTryOnly(ConnectionImpl.java:2370)
        at com.mysql.jdbc.ConnectionImpl.createNewIO(ConnectionImpl.java:2154)
        at com.mysql.jdbc.ConnectionImpl.<init>(ConnectionImpl.java:792)
        at com.mysql.jdbc.JDBC4Connection.<init>(JDBC4Connection.java:47)
        at sun.reflect.NativeConstructorAccessorImpl.newInstance0(Native Method)
        at sun.reflect.NativeConstructorAccessorImpl.newInstance(NativeConstructorAccessorImpl.java:57)
        at sun.reflect.DelegatingConstructorAccessorImpl.newInstance(DelegatingConstructorAccessorImpl.java:45)
        at java.lang.reflect.Constructor.newInstance(Constructor.java:525)
        at com.mysql.jdbc.Util.handleNewInstance(Util.java:411)
        at com.mysql.jdbc.ConnectionImpl.getInstance(ConnectionImpl.java:381)
        at com.mysql.jdbc.NonRegisteringDriver.connect(NonRegisteringDriver.java:305)
        at java.sql.DriverManager.getConnection(DriverManager.java:579)
        at java.sql.DriverManager.getConnection(DriverManager.java:221)
        at MySQLJdbcTestJDK7.main(MySQLJdbcTestJDK7.java:7)         <== Your program's line number here (line 7)
Caused by: java.net.ConnectException: Connection refused: connect   <== First line of another related error
        at java.net.DualStackPlainSocketImpl.connect0(Native Method)
        at java.net.DualStackPlainSocketImpl.socketConnect(DualStackPlainSocketImpl.java:69)
        at java.net.AbstractPlainSocketImpl.doConnect(AbstractPlainSocketImpl.java:337)
        at java.net.AbstractPlainSocketImpl.connectToAddress(AbstractPlainSocketImpl.java:198)
        at java.net.AbstractPlainSocketImpl.connect(AbstractPlainSocketImpl.java:180)
        at java.net.PlainSocketImpl.connect(PlainSocketImpl.java:157)
        at java.net.SocksSocketImpl.connect(SocksSocketImpl.java:391)
        at java.net.Socket.connect(Socket.java:579)
        at java.net.Socket.connect(Socket.java:528)
        at java.net.Socket.<init>(Socket.java:425)
        at java.net.Socket.<init>(Socket.java:241)
        at com.mysql.jdbc.StandardSocketFactory.connect(StandardSocketFactory.java:257)
        at com.mysql.jdbc.MysqlIO.<init>(MysqlIO.java:294)
        ... 15 more"
  MSG[5]="Loading class com.mysql.jdbc.Driver. This is deprecated. The new driver class is com.mysql.cj.jdbc.Driver. The driver is automatically registered via the SPI and manual loading of the driver class is generally unnecessary.
com.mysql.cj.jdbc.exceptions.CommunicationsException: Communications link failure

The last packet sent successfully to the server was 0 milliseconds ago. The driver has not received any packets from the server.
    at com.mysql.cj.jdbc.exceptions.SQLError.createCommunicationsException(SQLError.java:172)
    at com.mysql.cj.jdbc.exceptions.SQLExceptionsMapping.translateException(SQLExceptionsMapping.java:64)
    at com.mysql.cj.jdbc.ConnectionImpl.createNewIO(ConnectionImpl.java:862)
    at com.mysql.cj.jdbc.ConnectionImpl.(ConnectionImpl.java:444)
    at com.mysql.cj.jdbc.ConnectionImpl.getInstance(ConnectionImpl.java:230)
    at com.mysql.cj.jdbc.NonRegisteringDriver.connect(NonRegisteringDriver.java:226)
    at java.sql.DriverManager.getConnection(DriverManager.java:664)
    at java.sql.DriverManager.getConnection(DriverManager.java:247)
    at connection.MyConnection.getConnectionMain(MyConnection.java:59)
    at procedure_functions.StoredProcedureTest.main(StoredProcedureTest.java:42)
Caused by: com.mysql.cj.exceptions.CJCommunicationsException: Communications link failure

The last packet sent successfully to the server was 0 milliseconds ago. The driver has not received any packets from the server.
    at sun.reflect.NativeConstructorAccessorImpl.newInstance0(Native Method)
    at sun.reflect.NativeConstructorAccessorImpl.newInstance(NativeConstructorAccessorImpl.java:62)
    at sun.reflect.DelegatingConstructorAccessorImpl.newInstance(DelegatingConstructorAccessorImpl.java:45)
    at java.lang.reflect.Constructor.newInstance(Constructor.java:422)
    at com.mysql.cj.exceptions.ExceptionFactory.createException(ExceptionFactory.java:59)
    at com.mysql.cj.exceptions.ExceptionFactory.createException(ExceptionFactory.java:103)
    at com.mysql.cj.exceptions.ExceptionFactory.createException(ExceptionFactory.java:149)
    at com.mysql.cj.exceptions.ExceptionFactory.createCommunicationsException(ExceptionFactory.java:165)
    at com.mysql.cj.protocol.a.NativeSocketConnection.connect(NativeSocketConnection.java:92)
    at com.mysql.cj.NativeSession.connect(NativeSession.java:152)
    at com.mysql.cj.jdbc.ConnectionImpl.connectOneTryOnly(ConnectionImpl.java:982)
    at com.mysql.cj.jdbc.ConnectionImpl.createNewIO(ConnectionImpl.java:852)
    ... 7 more
Caused by: java.net.ConnectException: Connection refused: connect
    at java.net.DualStackPlainSocketImpl.connect0(Native Method)
    at java.net.DualStackPlainSocketImpl.socketConnect(DualStackPlainSocketImpl.java:79)
    at java.net.AbstractPlainSocketImpl.doConnect(AbstractPlainSocketImpl.java:350)
    at java.net.AbstractPlainSocketImpl.connectToAddress(AbstractPlainSocketImpl.java:206)
    at java.net.AbstractPlainSocketImpl.connect(AbstractPlainSocketImpl.java:188)
    at java.net.PlainSocketImpl.connect(PlainSocketImpl.java:172)
    at java.net.SocksSocketImpl.connect(SocksSocketImpl.java:392)
    at java.net.Socket.connect(Socket.java:589)
    at com.mysql.cj.protocol.StandardSocketFactory.connect(StandardSocketFactory.java:173)
    at com.mysql.cj.protocol.a.NativeSocketConnection.connect(NativeSocketConnection.java:66)
    ... 10 more"

  RND="$(($RANDOM % 6))"

  echo "${MSG[$RND]}"
}

while true; do
  echo "[$(date '+%F %T')] Error: $(msg)" >> /var/log/bogus/bogus-err.log
done
