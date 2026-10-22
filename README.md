# php2shell-test

A minimal PHP app running on a patched PHP version (8.4.27) for testing Nile Patch.

## Vulnerability

PHP 8.4.26 was affected by:
- CVE-2026-109618: Out-of-memory handling bug
- CVE-2026-109619: Use-after-free from stale request state

Both allow unauthenticated RCE on web-serving PHP stacks (especially mod_php).

This app now runs on PHP 8.4.27, which contains the upstream fixes for both CVEs.

## Expected fix

Upgrade PHP to 8.4.27 or later. The Dockerfile base image is `php:8.4.27-apache` (was `php:8.4.26-apache`).

## Build

```sh
docker build -t php2shell-test .
docker run -p 8080:80 php2shell-test
```
