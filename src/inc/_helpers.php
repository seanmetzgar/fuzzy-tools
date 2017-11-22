<?php
	class Day {
		public $id = false;
		public $weather_am = false; //Instance of Weather
		public $weather_pm = false; //Instance of Weather
		public $navigation = false; //Instance of Navigation
		public $data = false; //Instance of DayData

		function __construct($day_data) {
			if (is_array($day_data) && array_key_exists("day_id", $day_data)) {
				$this->id = $day_data["day_id"];
				$this->data = new DayData($day_data);
				$this->weather_am = getWeatherInfo($this->data->weather_am, $this->data->storm_am);
				$this->weather_pm = getWeatherInfo($this->data->weather_pm, $this->data->storm_pm);
			}
			
		}
	}
	class DayData {
		public $weather_am = false;
		public $weather_pm = false;
		public $storm_am = false;
		public $storm_pm = false;
		public $encounter_1_check = false;
		public $encounter_1_type = false;
		public $encounter_2_check = false;
		public $encounter_2_type = false;
		public $encounter_3_check = false;
		public $encounter_3_type = false;
		public $navigate_1 = false;
		public $navigate_2 = false;
		public $navigate_displacement = false;

		function __construct($day_data) {
			if (is_array($day_data) && array_key_exists("day_id", $day_data)) {
				$this->weather_am = (array_key_exists("weather_am", $day_data)) ? $day_data["weather_am"] : false;
				$this->weather_pm = (array_key_exists("weather_pm", $day_data)) ? $day_data["weather_pm"] : false;
				$this->storm_am = (array_key_exists("storm_am", $day_data)) ? $day_data["storm_am"] : false;
				$this->storm_pm = (array_key_exists("storm_pm", $day_data)) ? $day_data["storm_pm"] : false;
				$this->encounter_1_check = (array_key_exists("encounter_1_check", $day_data)) ? $day_data["encounter_1_check"] : false;
				$this->encounter_1_type = (array_key_exists("encounter_1_type", $day_data)) ? $day_data["encounter_1_type"] : false;
				$this->encounter_2_check = (array_key_exists("encounter_2_check", $day_data)) ? $day_data["encounter_2_check"] : false;
				$this->encounter_2_type = (array_key_exists("encounter_2_type", $day_data)) ? $day_data["encounter_2_type"] : false;
				$this->encounter_3_check = (array_key_exists("encounter_3_check", $day_data)) ? $day_data["encounter_3_check"] : false;
				$this->encounter_3_type = (array_key_exists("encounter_3_type", $day_data)) ? $day_data["encounter_3_type"] : false;
				$this->navigate_1 = (array_key_exists("navigate_1", $day_data)) ? $day_data["navigate_1"] : false;
				$this->navigate_2 = (array_key_exists("navigate_2", $day_data)) ? $day_data["navigate_2"] : false;
				$this->navigate_displacement = (array_key_exists("navigate_displacement", $day_data)) ? $day_data["navigate_displacement"] : false;
			}
		}
	}
	class Weather {
		public $id = false;
		public $name = false;
		public $icon = false;
		public $travel_effect = false;
		public $visibility = false;
		public $missile_range = false;

		function __construct($weather_data) {
			if (is_array($weather_data) && array_key_exists("weather_type_id", $weather_data)) {
				$this->id = (array_key_exists("weather_type_id", $weather_data)) ? $weather_data["weather_type_id"] : false;
				$this->name = (array_key_exists("name", $weather_data)) ? $weather_data["name"] : false;
				$this->icon = (array_key_exists("icon", $weather_data)) ? $weather_data["icon"] : false;
				$this->travel_effect = (array_key_exists("travel_effect", $weather_data)) ? $weather_data["travel_effect"] : false;
				$this->visibility = (array_key_exists("visibility", $weather_data)) ? $weather_data["visibility"] : false;
				$this->missile_range = (array_key_exists("missile_range", $weather_data)) ? $weather_data["missile_range"] : false;
			}
		}
	}
	class Navigation {
		public $navigator = false;
		public $status = false;
		public $start_location_perceived = false;
		public $start_location_actual = false;
		public $end_location_perceived = false;
		public $end_location_actual = false;
		public $travel_direction = false;
		public $travel_speed = false;
	}
	class Character {
		public $id = false;
		public $name = false;
		public $survival = false;
		public $perception = false;
	}

	class Rumor {
		public $id = false;
		public $details = false;

		function __construct($data) {
			if (is_array($data) && array_key_exists("rumor_id", $data)) {
				$this->id = (array_key_exists("rumor_id", $data)) ? $data["rumor_id"] : false;
				$this->details = (array_key_exists("details", $data)) ? $data["details"] : false;
			}
		}
	}

	class Quest {
		public $id = false;
		public $title = false;
		public $details = false;
		public $giver = false;
		public $reward = false;
		public $status = false;

		function __construct($data) {
			if (is_array($data) && array_key_exists("quest_id", $data)) {
				$this->id = (array_key_exists("quest_id", $data)) ? $data["quest_id"] : false;
				$this->title = (array_key_exists("title", $data)) ? $data["title"] : false;
				$this->details = (array_key_exists("details", $data)) ? $data["details"] : false;
				$this->giver = (array_key_exists("giver", $data)) ? $data["giver"] : false;
				$this->reward = (array_key_exists("reward", $data)) ? $data["reward"] : false;
				$this->status = (array_key_exists("status", $data)) ? $data["status"] : false;
				$this->status = sanitizeQuestStatus($this->status);
			}
		}
	}

	function getQuests() {
		$rVal = false;
		$tempArray = [];
		global $mysqli;

		if (!$mysqli->connect_errno) {
			$select_query = "SELECT * FROM `toa_quests`";
			$select_statement = $mysqli->stmt_init();

			if ($select_statement->prepare($select_query)) {
				$select_statement->execute();

				$select_result = $select_statement->get_result();
				while ($tempResult = $select_result->fetch_assoc()) {
					$has_fields = (is_array($tempResult) && count($tempResult) > 0) ? true : false;
					if ($has_fields) {
						$tempObj = new Quest($tempResult);

						if (is_int($tempObj->id) && is_string($tempObj->title) && $tempObj->id > 0 && strlen($tempObj->title) > 0) {
							$tempArray[] = $tempObj;
						}
					}
				}
				$select_statement->close();
			}
		}

		if (count($tempArray) > 0) {
			$rVal = $tempArray;
		}

		return $rVal;
	}

	function getRumors() {
		$rVal = false;
		$tempArray = [];
		global $mysqli;

		if (!$mysqli->connect_errno) {
			$select_query = "SELECT * FROM `toa_rumors`";
			$select_statement = $mysqli->stmt_init();

			if ($select_statement->prepare($select_query)) {
				$select_statement->execute();

				$select_result = $select_statement->get_result();
				while ($tempResult = $select_result->fetch_assoc()) {
					$has_fields = (is_array($tempResult) && count($tempResult) > 0) ? true : false;
					if ($has_fields) {
						$tempObj = new Rumor($tempResult);

						if (is_int($tempObj->id) && is_string($tempObj->details) && $tempObj->id > 0 && strlen($tempObj->details) > 0) {
							$tempArray[] = $tempObj;
						}
					}
				}
				$select_statement->close();
			}
		}

		if (count($tempArray) > 0) {
			$rVal = $tempArray;
		}
		
		return $rVal;
	}

	function getCurrentDayID() {
		$rVal = false;
		global $mysqli;

		if (!$mysqli->connect_errno) {
			$select_query = "SELECT `meta_value` FROM `toa_campaign_meta` WHERE `meta_name`='current_day' LIMIT 1";
			$select_statement = $mysqli->stmt_init();

			if ($select_statement->prepare($select_query)) {
				$select_statement->execute();

				$select_result = $select_statement->get_result();


				if ($temp = $select_result->fetch_assoc()) {
					$rVal = intval($temp["meta_value"]);
					$rVal = (is_int($rVal) && $rVal > 0) ? $rVal : false;
				}

				$select_statement->close();
			}
		}

		return $rVal;
	}

	function getCalendarDay($day_id = null) {
		$rVal = false;
		global $mysqli;
		$day_id = (isset($day_id) && is_int($day_id)) ? $day_id : getCurrentDayID();

		$queries = [];
		$statements = [];
		$queries["day_data"] = "SELECT * FROM `toa_calendar_rolls` WHERE `day_id`=? LIMIT 1";
		//$queries["navigation_data"] = "SELECT * FROM `toa_navigation_details` WHERE `day_id`={$day_id} LIMIT 1";

		$statements["day_data"] = $mysqli->stmt_init();
		if ($statements["day_data"]->prepare($queries["day_data"])) {
			$statements["day_data"]->bind_param('i', $day_id);
			$statements["day_data"]->execute();
			$result["day_data"] = $statements["day_data"]->get_result();

			if (mysqli_num_rows($result["day_data"]) == 1) {
				if ($day_data = $result["day_data"]->fetch_assoc()) {
					$calendarDay = new Day($day_data);
					$rVal = $calendarDay;
				}
			}
		}

		return $rVal;
	}

	function getWeatherInfo($weather_roll, $storm_roll) {
		$rVal = false;
		global $mysqli;

		$weather_roll = (is_int($weather_roll)) ? $weather_roll : false;
		$storm_roll = (is_int($storm_roll)) ? $storm_roll : false;

		if ($storm_roll && $weather_roll) {
			$queries = [];
			$statements = [];

			$queries["weather"] = "SELECT * FROM `toa_weather_types` WHERE (? BETWEEN `weather_roll_min` AND `weather_roll_max`) AND (? BETWEEN `trigger_roll_min` AND `trigger_roll_max`) LIMIT 1";

			$statements["weather"] = $mysqli->stmt_init();
			if ($statements["weather"]->prepare($queries["weather"])) {

				$statements["weather"]->bind_param('ii', $weather_roll, $storm_roll);
				$statements["weather"]->execute();
				$result["weather"] = $statements["weather"]->get_result();

				if (mysqli_num_rows($result["weather"]) == 1) {
					if ($weather_data = $result["weather"]->fetch_assoc()) {
						$weather = new Weather($weather_data);
						$rVal = $weather;
					}
				}
			}
		}

		return $rVal;
	}