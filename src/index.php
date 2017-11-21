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
            <h1 class="text-center">Quests</h1>
            <div class="row justify-content-center">

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
                                        <h5>Navigate Check (Alt)</h5>
                                        <p class="roll"><?php echo $day_data->data->navigate_2; ?></p>
                                        <p class="description">ADV / DA</p>
                                    </div>
                                    <div class="dice col-md">
                                        <h5>Displacement</h5>
                                        <p class="displacement d<?php echo $day_data->data->navigate_displacement; ?>"><?php echo $day_data->data->navigate_displacement; ?></p>
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="dice col-md grey lighten-4">
                                        <h5>Encounter 1</h5>
                                        <div class="row">
                                            <div class="col">
                                                <p class="roll"><?php echo $day_data->data->encounter_1_check; ?></p>
                                                <p class="description">Check</p>
                                            </div>
                                            <div class="col">
                                                <p class="roll"><?php echo $day_data->data->encounter_1_type; ?></p>
                                                <p class="description">Type</p>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="dice col-md">
                                        <h5>Encounter 2</h5>
                                        <div class="row">
                                            <div class="col">
                                                <p class="roll"><?php echo $day_data->data->encounter_2_check; ?></p>
                                                <p class="description">Check</p>
                                            </div>
                                            <div class="col">
                                                <p class="roll"><?php echo $day_data->data->encounter_2_type; ?></p>
                                                <p class="description">Type</p>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="dice col-md grey lighten-4">
                                        <h5>Encounter 3</h5>
                                        <div class="row">
                                            <div class="col">
                                                <p class="roll"><?php echo $day_data->data->encounter_3_check; ?></p>
                                                <p class="description">Check</p>
                                            </div>
                                            <div class="col">
                                                <p class="roll"><?php echo $day_data->data->encounter_3_type; ?></p>
                                                <p class="description">Type</p>
                                            </div>
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
                <a href="?day=<?php echo ($day_id + 1); ?>" class="btn btn-teal">Next Day</a>
            </div>
            <?php else: ?>
            <p class="text-center"><em>Invalid day id</em></p>
            <?php endif; ?>
        </section>

    </div>
    <!-- /Start your project here-->

    <!-- SCRIPTS -->
    <script type="text/javascript" src="js/all.js"></script>
</body>

</html>
