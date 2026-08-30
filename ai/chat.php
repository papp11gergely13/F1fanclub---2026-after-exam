<?php
// chat.php

header('Content-Type: application/json');

// IDE MÁSOLD BE AZ API KULCSODAT!
$apiKey = "AIzaSyCF5idMNtV3EYoOX0ieGAbnicWy30EYlQY"; 

// A MEGOLDÁS: A listádból származó, létező és támogatott modell neve
$apiUrl = "https://generativelanguage.googleapis.com/v1beta/models/gemini-2.5-flash:generateContent?key=" . $apiKey;

$input = json_decode(file_get_contents('php://input'), true);
$userMessage = $input['message'] ?? '';

if (empty($userMessage)) {
    echo json_encode(['error' => 'Nincs üzenet megadva.']);
    exit;
}

// A bot személyisége és a kérdés egybegyúrva a legbiztosabb működésért
$promptToAI = "Te egy tapasztalt szoftverfejlesztő mentor vagy. Főleg C# (Windows Forms, fájlkezelés), PHP, HTML, CSS és JS nyelvekben segítesz. Válaszaid legyenek rövidek, szakmaiak és kód-fókuszúak. \n\nA felhasználó kérdése: " . $userMessage;

$data = [
    "contents" => [
        [
            "role" => "user",
            "parts" => [
                ["text" => $promptToAI]
            ]
        ]
    ]
];

$ch = curl_init($apiUrl);
curl_setopt($ch, CURLOPT_RETURNTRANSFER, true);
curl_setopt($ch, CURLOPT_POST, true);
curl_setopt($ch, CURLOPT_HTTPHEADER, ['Content-Type: application/json']);
curl_setopt($ch, CURLOPT_POSTFIELDS, json_encode($data));

$response = curl_exec($ch);

if(curl_errno($ch)) {
    echo json_encode(['error' => 'Szerver hálózati hiba: ' . curl_error($ch)]);
    curl_close($ch);
    exit;
}

curl_close($ch);
echo $response;
?>