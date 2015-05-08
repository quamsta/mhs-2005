<?php
class EventsPage extends Calendar {

	private static $db = array(
		'Byline' => 'Text',
	);

	private static $has_one = array(

	);

	public function getCMSFields() {
		$fields = parent::getCMSFields();
		$fields->removeByName('SideBar');
		$fields->addFieldToTab('Root.Main', new TextField('Byline', 'Byline'), 'Content');

		return $fields;
	}
}

class EventsPage_Controller extends Calendar_Controller {

}
