<?php
	require("inc/_mysql.php");
	require("inc/_helpers.php");

	class Response {
		public $status = false;
		public $message = "";
		public $data = "";

		function __construct($status, $message, $data) {
			$this->status = $status;
			$this->message = $message;
			$this->data = $data;
		}
	}

	$action = (isset($_REQUEST["action"]) && strlen($_REQUEST["action"]) > 0) ? $_REQUEST["action"] : false;
	$status = false;
	$message = "";
	$data = "";

	switch ($action):
		case "set_navigation_meta":
			$day_id = $_REQUEST["day_id"];
			$navigator_id = $_REQUEST["navigator"];
			$speed = $_REQUEST["speed"];
			$terrain_1 = $_REQUEST["terrain_1"]
			$terrain_2 = $_REQUEST["terrain_2"];
			$terrain_3 = $_REQUEST["terrain_3"];

			$status = (setNavigationDetails($day_id, $navigator_id, $speed, $terrain_1, $terrain_2, $terrain_3)) ? true : false;
			break;
		default:
			$status = false;
	endswitch;

	$response = new Response($status, $message, $data);
	$response = json_encode($response);

	header('Content-Type: application/json');
	echo $response;