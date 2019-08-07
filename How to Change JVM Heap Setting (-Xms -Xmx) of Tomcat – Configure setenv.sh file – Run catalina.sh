https://crunchify.com/how-to-change-jvm-heap-setting-xms-xmx-of-tomcat/

-Xmx:  
Specifies the maximum size, in bytes, of the memory allocation pool. This value must a multiple of 1024 greater than 2MB.
Append the letter k or K to indicate kilobytes, or m or M to indicate megabytes. The default value is 64MB. The upper limit for this
value will be approximately 4000m on Solaris 7 

-XX:PermSize 
It’s used to set size for Permanent Generation. It is where class files are kept. 

Step1: 
Go to Apache Tomcat /bin directory. 
 /tomcat/bin/

Step2: 
By default you wont see setenv.sh (for Linux/Mac) or setenv.bat (for windows) file under /bin directory.
You have to create one with below parameters. 
vi /tomcat/bin/setenv.sh 
export CATALINA_OPTS="$CATALINA_OPTS -Xms512m" 
export CATALINA_OPTS="$CATALINA_OPTS -Xmx8192m" 
export CATALINA_OPTS="$CATALINA_OPTS -XX:MaxPermSize=256m" 

step3: 
Go to <Tomcat Directory>/bin directory 
Execute command: ./catalina.sh run 
