<?php

$jsonData = json_decode(file_get_contents("https://cache-api.splinterlands.com/players/leaderboard"));

$leaders = [];
foreach($jsonData as $data) {
    $leaders[] = $data->player;
}

echo "['" . implode("','", $leaders) . "']";

?>