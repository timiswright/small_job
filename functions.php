<?php

//I'm going to need a settings table for the following tied to id for each manager

$mysettings = array(
	'team' 			=>	'Youth Under 11\'s',
	'manager'		=>	'John Smith',
	'league'		=>	'Division 1',
	'agegroup'	=>	'Under 11\'s',
	'ref'				=>	'Paul Jones',
);

//I'm going to need a players table for the following tied to id for each manager

$players = array(
	array(	'PlayerName'=>	'Brennan Wright',
			'ShirtNo'	=>	'8',
			'DOB'		=>	'25/10/2001',
			'RegNo'		=>	'1966',
			'Goals'		=>	''),

	array(	'PlayerName'=>	'Nathan Davies',
			'ShirtNo'	=>	'11',
			'DOB'		=>	'15/05/2002',
			'RegNo'		=>	'9804',
			'Goals'		=>	''),

	array(	'PlayerName'=>	'Luke Armstrong',
			'ShirtNo'	=>	'16',
			'DOB'		=>	'20/06/2002',
			'RegNo'		=>	'9901',
			'Goals'		=>	''),

	array(	'PlayerName'=>	'Simon Woodrow',
			'ShirtNo'	=>	'9',
			'DOB'		=>	'30/12/2001',
			'RegNo'		=>	'5892',
			'Goals'		=>	''),

	array(	'PlayerName'=>	'Toby Woods',
			'ShirtNo'	=>	'4',
			'DOB'		=>	'06/01/2002',
			'RegNo'		=>	'785',
			'Goals'		=>	''),
);

//I'm going to need a teams table for the following, generic table. Maybe club names and venues.

$teams = array(
	'01'	=>	'The Crabs',
	'02'	=>	'East Coast',
	'03'	=>	'The Tigers',
	'04'	=>	'North Reds',
	'05'	=>	'Old Rovers',
	'06'	=>	'New City',
);

?>
