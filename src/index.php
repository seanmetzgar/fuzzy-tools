<?php
    require("inc/_mysql.php");
    require("inc/_helpers.php");
    $day_id = (isset($_REQUEST["day"]) && intval($_REQUEST["day"]) > 0) ? intval($_REQUEST["day"]) : getCurrentDayID();
    $day_data = getCalendarDay($day_id);
?><!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta http-equiv="x-ua-compatible" content="ie=edge">
    <title>Material Design Bootstrap</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
    <link href="font/fuzzy-tools/css/fuzzy-tools.css" rel="stylesheet">
    <link href="css/all.min.css" rel="stylesheet">
</head>

<body>
    <!-- Start your project here-->
    <div id="menu-wrapper" class="z-depth-0">
        <ul class="nav flex-center flex-column">
            <li class="nav-item"><a class="nav-link" href="#/calendar"><i class="icon-calendar"></i>Calendar</a></li>
            <li class="nav-item"><a class="nav-link" href="#/quests"><i class="icon-quests"></i>Quests</a></li>
            <li class="nav-item"><a class="nav-link" href="#/inventory"><i class="icon-inventory" aria-hidden="true"></i>Inventory</a></li>
            <li class="nav-item"><a class="nav-link" href="#/characters"><i class="icon-users" aria-hidden="true"></i>Characters</a></li>
            <li class="nav-item"><a class="nav-link" href="#/death-curse"><i class="icon-emo-devil" aria-hidden="true"></i>Death Curse</a></li>
            <li class="nav-item"><a class="nav-link" href="#/settings"><i class="icon-cog-alt" aria-hidden="true"></i>Settings</a></li>
        </ul>
    </div>
    
    <div id="app-wrapper" class="z-depth-2">
        <!--Navbar-->
        <nav class="navbar fixed-top navbar-dark">
            <button class="navbar-toggler" type="button" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>
        </nav>

        <!-- BEGIN: Quests View -->
        <section class="app-view container quests" id="quests">
            <h1 class="text-center">Quests &amp; Rumors</h1>
            

            <h3 class="text-center top-margin">Rumors</h1>
            <div class="row justify-content-center">
                <?php $rumors = getRumors(); if ($rumors && is_array($rumors)): ?>
                <div class="list-group rumors-list col-md-10">
                    <?php foreach ($rumors as $rumor): ?>
                    <div class="list-group-item">
                        <?php echo8($rumor->details); ?>
                    </div>
                    <?php endforeach; ?>
                </div>
                <?php endif; ?>
            </div>

            <h3 class="text-center top-margin">Quests</h1>
            <div class="row justify-content-center">
                <?php $quests = getQuests(); if ($quests && is_array($quests)): ?>
                <div class="quest-list col-md-10">
                    <?php foreach ($quests as $quest): ?>
                    <div class="card data-card quest-card">
                        <div class="card-header d-flex w-100 justify-content-between">
                            <h5><?php echo $quest->title; ?></h5>
                            <small class="status"><?php echo $quest->status; ?></small>
                        </div>

                        <div class="card-body">
                            <div class="quest-details">
                                <div class="meta">
                                    <p><strong>Giver:</strong> <?php echo $quest->giver; ?></p>
                                    <p><strong>Reward:</strong> <?php echo $quest->reward; ?></p>
                                </div>

                                <p><?php echo $quest->details; ?></p>
                            </div>

                        </div>
                    </div>
                    <?php endforeach; ?>
                </div>
                <?php endif; ?>
            </div>
        </section>

        <!-- BEGIN: Inventory View -->
        <section class="app-view container inventory" id="inventory">
            <h1 class="text-center">Inventory</h1>
            <div class="row justify-content-center">

            </div>
        </section>

        <!-- BEGIN: Characters View -->
        <section class="app-view container characters" id="characters">
            <h1 class="text-center">Characters</h1>
            <div class="row justify-content-center">

            </div>
        </section>

        <!-- BEGIN: Death Curse View -->
        <section class="app-view container death-curse" id="death-curse">
            <h1 class="text-center">Death Curse</h1>
            <div class="row justify-content-center">

            </div>
        </section>

        <!-- BEGIN: Settings View -->
        <section class="app-view container settings" id="settings">
            <h1 class="text-center">Settings</h1>
            <div class="row justify-content-center">

            </div>
        </section>

        <!-- BEGIN: Calendar View -->
        <section class="app-view container calendar" id="calendar">
            <h1 class="text-center">Calendar</h1>
            <?php if (is_object($day_data) && $day_data->id != false): ?>
            <div class="row justify-content-center">
                <div class="col-md-10 card-deck">
                    <div class="data-card calendar-card card">
                        <div class="card-header">
                            <h3>Day #<?php echo $day_data->id; ?></h3>
                        </div>
                        <div class="card-body">
                            <div class="weather-details text-center">
                                <div class="row">
                                    <div class="col-md weather am yellow lighten-5">
                                        <h5>AM Forecast</h5>
                                        <i class="icon-<?php echo $day_data->weather_am->icon; ?>" aria-label="<?php echo $day_data->weather_am->name; ?>" title="<?php echo $day_data->weather_am->name; ?>"></i>
                                        <p><em><?php echo $day_data->weather_am->name; ?></em></p>

                                        <ul class="data">
                                            <li>
                                                <strong>Visibility:</strong>
                                                <?php echo $day_data->weather_am->visibility; ?>
                                            </li>
                                            <li>
                                                <strong>Travel Effect:</strong>
                                                <?php echo $day_data->weather_am->travel_effect; ?>
                                            </li>
                                            <li>
                                                <strong>Missile Range:</strong>
                                                <?php echo $day_data->weather_am->missile_range; ?>
                                            </li>
                                        </ul>
                                    </div>
                                    <div class="col-md weather am blue lighten-5">
                                        <h5>PM Forecast</h5>
                                        <i class="weather am icon-<?php echo $day_data->weather_pm->icon; ?>" aria-label="<?php echo $day_data->weather_pm->name; ?>" title="<?php echo $day_data->weather_pm->name; ?>"></i>
                                        <p><em><?php echo $day_data->weather_pm->name; ?></em></p>

                                        <ul class="data">
                                            <li>
                                                <strong>Visibility:</strong>
                                                <?php echo $day_data->weather_pm->visibility; ?>
                                            </li>
                                            <li>
                                                <strong>Travel Effect:</strong>
                                                <?php echo $day_data->weather_pm->travel_effect; ?>
                                            </li>
                                            <li>
                                                <strong>Missile Range:</strong>
                                                <?php echo $day_data->weather_pm->missile_range; ?>
                                            </li>
                                        </ul>
                                    </div>
                                </div>
                            </div>

                            <div class="dice-details text-center">
                                <div class="row">
                                    <div class="dice col-md">
                                        <h5>Navigate Check</h5>
                                        <p class="roll"><?php echo $day_data->data->navigate_1; ?></p>
                                        <p class="description">Navigator Survival</p>
                                    </div>
                                    <div class="dice col-md grey lighten-4">
                                        <h5>Displacement</h5>
                                        <p class="displacement d<?php echo $day_data->data->navigate_displacement; ?>"><?php echo $day_data->data->navigate_displacement; ?></p>
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="dice col-md grey lighten-4">
                                        <h5>Morning Encounter</h5>
                                        <div class="row">
                                            <?php if ($day_data->data->encounter_1_bool): ?>
                                            <div class="col">
                                                <p class="roll"><?php echo $day_data->data->encounter_1_type; ?></p>
                                                <p class="description">Encounter Type</p>
                                            </div>
                                            <?php else: ?>
                                            <div class="col">
                                                <p class="roll">N/A</p>
                                                <p class="description">Encounter Type</p>
                                            </div>
                                            <?php endif; ?>
                                        </div>
                                    </div>
                                    <div class="dice col-md">
                                        <h5>Afternoon Encounter</h5>
                                        <div class="row">
                                            <?php if ($day_data->data->encounter_2_bool): ?>
                                            <div class="col">
                                                <p class="roll"><?php echo $day_data->data->encounter_2_type; ?></p>
                                                <p class="description">Encounter Type</p>
                                            </div>
                                            <?php else: ?>
                                            <div class="col">
                                                <p class="roll">N/A</p>
                                                <p class="description">Encounter Type</p>
                                            </div>
                                            <?php endif; ?>
                                        </div>
                                    </div>
                                    <div class="dice col-md grey lighten-4">
                                        <h5>Night Encounter</h5>
                                        <div class="row">
                                            <?php if ($day_data->data->encounter_3_bool): ?>
                                            <div class="col">
                                                <p class="roll"><?php echo $day_data->data->encounter_3_type; ?></p>
                                                <p class="description">Encounter Type</p>
                                            </div>
                                            <?php else: ?>
                                            <div class="col">
                                                <p class="roll">N/A</p>
                                                <p class="description">Encounter Type</p>
                                            </div>
                                            <?php endif; ?>
                                        </div>
                                    </div>
                                </div>       
                            </div>
                        </div>
                    </div>
                </div>
            </div>

            <div class="text-center">
                <a href="?day=<?php echo ($day_id - 1); ?>" class="btn btn-brown">Previous Day</a>
                <a href="/" class="btn btn-mdb">Current Day</a>
                <button class="btn btn-mdb set-current-day" data-current-day="<?php echo $day_id; ?>">SET Current Day</button>
                <a href="?day=<?php echo ($day_id + 1); ?>" class="btn btn-teal">Next Day</a>
            </div>
            <?php else: ?>
            <p class="text-center"><em>Invalid day id</em></p>
            <?php endif; ?>
        </section>

        <!-- BEGIN: Navigate View -->
        <section class="overlay-view container navigate" id="navigate">
            <h1 class="text-center">Navigate</h1>
            <form>
                <input type="hidden" name="day-id" value="<?php echo $day_id; ?>">
                <div class="row">
                    <div class="col">
                        <div class="md-form">
                            <input class="form-control" type="text" disabled value="<?php echo $day_id; ?>" for="setting-day-id">
                            <label for="setting-day-id">Current Day</label>
                        </div>
                    </div>
                    <div class="col">
                        <select class="mdb-select" id="setting-speed" name="speed">
                            <option value="0">No Travel</option>
                            <option value="1">Slow</option>
                            <option value="2" selected>Normal</option>
                            <option value="3">Fast</option>
                        </select>
                        <label for="setting-speed">Travel Speed</label>
                    </div>
                    <div class="col">
                        <select class="mdb-select" id="setting-navigator" name="navigator">
                            <?php $navigators = getNavigators(); ?>
                            <?php if (is_array($navigators) && count($navigators) > 0) {
                                foreach($navigators as $navigator): ?>
                            <option value="<?php echo $navigator->id; ?>"><?php echo $navigator->name . " (" . formatNumber($navigator->survival) . ")"; ?></option>
                            <?php endforeach;
                            } ?>
                        </select>
                        <label for="setting-navigator">Navigator</label>
                    </div>
                </div>

                <div class="row">
                    <div class="col">
                        <select class="mdb-select" id="setting-speed" name="speed">
                            <?php $terrains = getTerrains(); ?>
                            <?php if (is_array($terrains) && count($terrains) > 0) {
                                foreach($terrains as $terrain): ?>
                            <option value="<?php echo $terrain->id; ?>"><?php echo $terrain->name; ?></option>
                            <?php endforeach;
                            } ?>
                        </select>
                        <label for="setting-speed">Morning Terrain</label>
                    </div>
                    <div class="col">
                        <select class="mdb-select" id="setting-speed" name="speed">
                            <?php if (is_array($terrains) && count($terrains) > 0) {
                                foreach($terrains as $terrain): ?>
                            <option value="<?php echo $terrain->id; ?>"><?php echo $terrain->name; ?></option>
                            <?php endforeach;
                            } ?>
                        </select>
                        <label for="setting-speed">Afternoon Terrain</label>
                    </div>
                    <div class="col">
                        <select class="mdb-select" id="setting-speed" name="speed">
                            <?php if (is_array($terrains) && count($terrains) > 0) {
                                foreach($terrains as $terrain): ?>
                            <option value="<?php echo $terrain->id; ?>"><?php echo $terrain->name; ?></option>
                            <?php endforeach;
                            } ?>
                        </select>
                        <label for="setting-speed">Evening Terrain</label>
                    </div>

                </div>
            </form>
        </section>

    </div>
    <!-- /Start your project here-->

    <!-- SCRIPTS -->
    <script type="text/javascript" src="js/all.js"></script>
</body>

</html>
