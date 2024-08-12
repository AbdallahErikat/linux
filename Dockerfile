# استخدام صورة جافا الأساسية
FROM openjdk:11-jdk

# تحميل وتثبيت Tomcat
RUN mkdir -p /usr/local/tomcat && \
    wget https://dlcdn.apache.org/tomcat/tomcat-9/v9.0.91/bin/apache-tomcat-9.0.91.tar.gz && \
    tar xzf apache-tomcat-9.0.91.tar.gz --strip-components=1 -C /usr/local/tomcat && \
    rm apache-tomcat-9.0.91.tar.gz && \
    chmod +x /usr/local/tomcat/bin/catalina.sh


# نسخ ملف sample.war إلى دليل الويب في Tomcat
COPY sample.war /usr/local/tomcat/webapps/


# تعيين الدليل الحالي للعمل إلى Tomcat
WORKDIR /usr/local/tomcat



# فتح المنفذ 8080
EXPOSE 8080

# بدء Tomcat عند تشغيل الحاوية
CMD ["bin/catalina.sh", "run"]

#docker build -t my-tomcat-image .
#docker run -p 8080:8080 my-tomcat-image
#ادخل على الحاوية
#docker exec -it <container_id> /bin/bash
# cd /usr/local/tomcat
# bin/catalina.sh status
 













# استخدام صورة جافا الأساسية
#FROM openjdk:11-jdk

# تعيين متغير البيئة لتحميل Tomcat
#ENV CATALINA_HOME /usr/local/tomcat
#ENV PATH $CATALINA_HOME/bin:$PATH

# تحميل وتثبيت Tomcat
#RUN mkdir -p "$CATALINA_HOME"
#WORKDIR $CATALINA_HOME

# تحميل وتثبيت Tomcat
#RUN mkdir -p $CATALINA_HOME && \
    #wget https://dlcdn.apache.org/tomcat/tomcat-9/v9.0.91/bin/apache-tomcat-9.0.91.tar.gz && \
    #tar xzf apache-tomcat-9.0.91.tar.gz --strip-components=1 -C $CATALINA_HOME && \
    #rm apache-tomcat-9.0.91.tar.gz

# فتح المنفذ 8080
#EXPOSE 8080

# بدء Tomcat عند تشغيل الحاوية
#CMD ["catalina.sh", "run"]




