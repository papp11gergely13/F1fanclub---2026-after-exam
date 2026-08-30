<?php
// list_models.php
header('Content-Type: text/plain; charset=utf-8');

$apiKey = "AIzaSyCF5idMNtV3EYoOX0ieGAbnicWy30EYlQY"; 
$apiUrl = "https://generativelanguage.googleapis.com/v1beta/models?key=" . $apiKey;

$ch = curl_init($apiUrl);
curl_setopt($ch, CURLOPT_RETURNTRANSFER, true);

// Nyers válasz lekérése
$response = curl_exec($ch);

if(curl_errno($ch)) {
    echo 'Szerver hálózati hiba: ' . curl_error($ch);
} else {
    // Itt most nem alakítjuk át, csak kiírjuk a nyers választ
    echo "A Google szerver nyers válasza:\n\n";
    echo $response;
}
curl_close($ch);
?>