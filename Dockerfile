FROM php:8.4.27-apache
# Fixed: upgraded PHP to 8.4.27+ to address php2shell (CVE-2026-109618, CVE-2026-109619)
COPY . /var/www/html/
RUN chmod -R 755 /var/www/html