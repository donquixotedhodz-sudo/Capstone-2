<?php
require_once 'config/database.php';

echo "<h2>Database Connection Test</h2>";
echo "<p><strong>Configuration:</strong></p>";
echo "Host: " . DB_HOST . "<br>";
echo "Port: " . DB_PORT . "<br>";
echo "Database: " . DB_NAME . "<br>";
echo "User: " . DB_USER . "<br>";
echo "Password: " . (DB_PASS ? str_repeat('*', strlen(DB_PASS)) : 'Not set') . "<br><br>";

// Test 1: Basic PDO connection
echo "<h3>Test 1: PDO Connection</h3>";
try {
    $dsn = "mysql:host=" . DB_HOST . ";port=" . DB_PORT . ";dbname=" . DB_NAME;
    $pdo = new PDO($dsn, DB_USER, DB_PASS);
    $pdo->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
    echo "<span style='color: green;'>✓ PDO Connection successful!</span><br>";
    
    // Test a simple query
    $stmt = $pdo->query("SELECT 1 as test");
    $result = $stmt->fetch();
    echo "<span style='color: green;'>✓ Query test successful: " . $result['test'] . "</span><br>";
    
} catch (PDOException $e) {
    echo "<span style='color: red;'>✗ PDO Connection failed: " . $e->getMessage() . "</span><br>";
    echo "<span style='color: red;'>Error Code: " . $e->getCode() . "</span><br>";
}

// Test 2: Alternative connection without port specification
echo "<h3>Test 2: Connection without explicit port</h3>";
try {
    $dsn = "mysql:host=" . DB_HOST . ";dbname=" . DB_NAME;
    $pdo2 = new PDO($dsn, DB_USER, DB_PASS);
    $pdo2->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
    echo "<span style='color: green;'>✓ Connection without port successful!</span><br>";
} catch (PDOException $e) {
    echo "<span style='color: red;'>✗ Connection without port failed: " . $e->getMessage() . "</span><br>";
}

// Test 3: Local XAMPP connection
echo "<h3>Test 3: Local XAMPP Connection</h3>";
try {
    $dsn = "mysql:host=localhost;dbname=fourjs_db";
    $pdo3 = new PDO($dsn, 'root', '');
    $pdo3->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
    echo "<span style='color: green;'>✓ Local XAMPP connection successful!</span><br>";
} catch (PDOException $e) {
    echo "<span style='color: red;'>✗ Local XAMPP connection failed: " . $e->getMessage() . "</span><br>";
}

// Test 4: Check if database exists locally
echo "<h3>Test 4: Check Local Databases</h3>";
try {
    $pdo4 = new PDO("mysql:host=localhost", 'root', '');
    $pdo4->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
    $stmt = $pdo4->query("SHOW DATABASES");
    $databases = $stmt->fetchAll(PDO::FETCH_COLUMN);
    echo "<span style='color: blue;'>Available databases:</span><br>";
    foreach ($databases as $db) {
        echo "- " . $db . "<br>";
    }
} catch (PDOException $e) {
    echo "<span style='color: red;'>✗ Cannot list databases: " . $e->getMessage() . "</span><br>";
}

echo "<h3>Recommendations:</h3>";
echo "<ul>";
echo "<li>If Test 3 works, consider switching to local XAMPP database</li>";
echo "<li>If using cloud database, check network connectivity and firewall settings</li>";
echo "<li>Verify that the cloud database service is running and accessible</li>";
echo "<li>Check if the database credentials are still valid</li>";
echo "</ul>";
?>