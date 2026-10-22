FROM php:8.4.26-apache
# VULNERABLE: PHP 8.4.26 is affected by php2shell (CVE-2026-109618, CVE-2026-109619)
# Fix: upgrade to php:8.4.27-apache or later
COPY . /var/www/html/
RUN chmod -R 755 /var/www/html
