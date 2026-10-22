FROM php:8.4.27-apache
# PATCHED: PHP 8.4.27 fixes php2shell (CVE-2026-109618, CVE-2026-109619)
# Previously pinned to php:8.4.26-apache, which was affected by both CVEs.
COPY . /var/www/html/
RUN chmod -R 755 /var/www/html
