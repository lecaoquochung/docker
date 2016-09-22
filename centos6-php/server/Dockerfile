FROM centos:6

RUN rpm -ivh http://dl.fedoraproject.org/pub/epel/6/i386/epel-release-6-8.noarch.rpm
RUN rpm -ivh http://rpms.famillecollet.com/enterprise/remi-release-6.rpm
RUN yum update -y
RUN yum install -y httpd
RUN yum install --enablerepo=epel,remi-php56,remi -y \
                              php php-devel php-intl \
                              php-cli php-curl \
                              php-gd \
                              php-mbstring \
                              php-mcrypt \
                              php-mysqlnd \
                              php-pdo \
                              php-xml \
                              php-xdebug \
                              php-memcached \
                              mysql-server \
                              phpmyadmin
RUN sed -i -e "s|^;date.timezone =.*$|date.timezone = Asia/Tokyo|" /etc/php.ini

COPY httpd.conf /etc/httpd/conf.d/virtual.conf

EXPOSE 80
CMD ["/usr/sbin/apachectl", "-D", "FOREGROUND"]
