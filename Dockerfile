FROM centos:centos7

MAINTAINER folpindo@gmail.com
ENV site /var/www/html/site
WORKDIR  ${site}
ADD . $site

# Environments

ENV TIMEZONE            Asia/Manila
ENV PHP_MEMORY_LIMIT    512M
ENV MAX_UPLOAD          50M
ENV PHP_MAX_FILE_UPLOAD 200
ENV PHP_MAX_POST        100M

# Install packages
RUN yum -y update &&  yum clean all
RUN yum -y install epel-release && yum clean all

RUN yum -y install git \
    bind-utils \
    pwgen \
    psmisc \
    net-tools \
    hostname \
    curl \
    curl-devel \
    sqlite \
    cronie \
    libevent \
    gearmand \
    libgearman \
    libgearman-devel \
    php \
    php-bcmath \
    php-common \
    php-pear \
    php-mysql \
    php-cli \
    php-devel \
    php-gd \
    php-fpm \
    php-pdo \
    php-mbstring \
    php-mcrypt \
    php-soap \
    php-xml \
    php-xmlrpc \
    php-pecl-gearman && yum clean all
