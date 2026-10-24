<?php
// php2shell-test: app running on PHP 8.4.27+ (fixed)
// Previously affected by CVE-2026-109618 (OOM handling) and CVE-2026-109619 (use-after-free)
// Fixed by upgrading PHP to 8.4.27+

header('Content-Type: text/plain');

$action = $_GET['action'] ?? 'home';

if ($action === 'status') {
    echo "ok\n";
    echo "PHP version: " . PHP_VERSION . "\n";
    exit;
}

echo "php2shell-test app\n";
echo "PHP version: " . PHP_VERSION . "\n";
echo "Usage: ?action=status\n";