<?php
function pdo_connect_mysql() {
    // My MySQL details
    $DATABASE_HOST = 'localhost';
    $DATABASE_USER = 'id15305735_omar';
    $DATABASE_PASS = 'eR2@v1ni@_VkB<E?';
    $DATABASE_NAME = 'id15305735_listofrents';
    try {
    	return new PDO('mysql:host=' . $DATABASE_HOST . ';dbname=' . $DATABASE_NAME . ';charset=utf8', $DATABASE_USER, $DATABASE_PASS);
    } catch (PDOException $exception) {
    	// If there is an error with the connection, stop the script and display the error.
    	exit('Failed to connect to database!');
    }
}
//feel free to customize this
function template_header($title) {
echo <<<EOT
<!DOCTYPE html>
<html>
	<head>
		<meta charset="utf-8">
		<title>$title</title>
		<link href="style.css" rel="stylesheet" type="text/css">
		<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.7.1/css/all.css">
	</head>
	<body>
        <header>
            <div class="content-wrapper">
                <h1>إيجاري</h1>
                <nav>
                    <a href="index.php">الرئيسية</a>
                    <a href="index.php?page=products">إيجار الطُلاب</a>
                </nav>
            </div>
        </header>
        <main>
EOT;
}
// Template footer
function template_footer() {
$year = date('Y');
echo <<<EOT
        </main>
        <footer>
            <div class="content-wrapper">
                <p>2020 كل الحقوق محفوظة، إيجاري</p>
            </div>
        </footer>
        <script src="script.js"></script>
    </body>
</html>
EOT;
}
?>