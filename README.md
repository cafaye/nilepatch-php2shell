# php2shell-test

A minimal PHP app running on a vulnerable PHP version (8.4.26) for testing Nile Patch.

## Vulnerability

This app runs on PHP 8.4.26, which is affected by:
- CVE-2026-109618: Out-of-memory handling bug
- CVE-2026-109619: Use-after-free from stale request state

Both allow unauthenticated RCE on web-serving PHP stacks (especially mod_php).

## Expected fix

Upgrade PHP to 8.4.27 or later. Update the Dockerfile base image from `php:8.4.26-apache` to `php:8.4.27-apache`.

## Build

```sh
docker build -t php2shell-test .
docker run -p 8080:80 php2shell-test
```
