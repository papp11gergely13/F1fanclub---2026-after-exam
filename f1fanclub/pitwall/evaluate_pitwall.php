<?php
// evaluate_pitwall.php
require_once('../db_connect.php'); // Vagy ahol a csatlakozásod van

$race_id = 25; // Példa: a Kanadai Nagydíj ID-ja

// 1. Lekérjük a hivatalos végeredményt (a live_telemetry táblából a pozíciók alapján)
$sql_real = "SELECT driver_id FROM live_telemetry WHERE race_control_id = 1 ORDER BY position ASC";
$res_real = $conn->query($sql_real);
$real_results = [];
while($row = $res_real->fetch_assoc()) {
    $real_results[] = $row['driver_id'];
}

// 2. Lekérjük az összes felhasználó tippjét ehhez a futamhoz
$sql_preds = "SELECT username, predictions FROM pitwall_predictions WHERE race_id = ?";
$stmt = $conn->prepare($sql_preds);
$stmt->bind_param("i", $race_id);
$stmt->execute();
$preds_res = $stmt->get_result();

while($user_row = $preds_res->fetch_assoc()) {
    $user = $user_row['username'];
    $prediction = json_decode($user_row['predictions'], true); // JSON -> Tömb
    $earned_points = 0;

    // 3. Összehasonlítás (Iteráció az indexeken)
    foreach($prediction as $index => $predicted_driver_id) {
        // Ha a tippelt helyen lévő pilóta ID megegyezik a valós végeredményben lévővel
        if(isset($real_results[$index]) && $predicted_driver_id == $real_results[$index]) {
            $earned_points += 10; // 10 pont telitalálatonként
        }
    }

    // 4. Pontok jóváírása a felhasználónak
    if($earned_points > 0) {
        $update_sql = "UPDATE users SET pitwall_points = pitwall_points + ? WHERE username = ?";
        $upd_stmt = $conn->prepare($update_sql);
        $upd_stmt->bind_param("is", $earned_points, $user);
        $upd_stmt->execute();
        $upd_stmt->close();
    }
}
echo "A kiértékelés sikeresen lezajlott!";
?>