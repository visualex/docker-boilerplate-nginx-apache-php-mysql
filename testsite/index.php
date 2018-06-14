<?php

$link = mysqli_connect("dbserver", "root", "roots", "testsite_test");

if (mysqli_connect_errno()) {
    printf("Connect failed: %s\n", mysqli_connect_error());
    exit();
}

header('Content-Type: text/plain');

for ($i=0; $i < 10; $i++) {
    echo 'Nginx Reverse Proxy Works! Apache works! PHP Works! MySQL Also works!', "\n";
}
