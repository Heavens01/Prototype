<?php

	function lang($phrase) {

		static $lang = array(

			// Navbar Links

			'HOME_ADMIN' 	=> 'Home',
			'CATEGORIES' 	=> 'Categories',
			'DESIGNS' 		=> 'Designs',
			'MEMBERS' 		=> 'Members',
			'FEEDBACKS'		=> 'Feedbacks',
			'STATISTICS' 	=> 'Statistics',
			'LOGS' 			=> 'Logs',
			'' => '',
			'' => '',
			'' => '',
			'' => '',
			'' => ''
		);

		return $lang[$phrase];

	}
