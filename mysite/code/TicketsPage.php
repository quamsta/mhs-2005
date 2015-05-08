<?php
class TicketsPage extends Page {

	private static $db = array(
		'Byline' => 'HTMLText',
	);

	private static $has_one = array(

	);

	public function getCMSFields() {
		$fields = parent::getCMSFields();
		$fields->removeByName('RightTitle');
		$fields->removeByName('RightContent');
		$fields->removeByName('SidebarTitle');
		$fields->removeByName('SidebarContent');
		$fields->removeByName('Sidebar');

		$fields->addFieldToTab('Root.Main', new TextField('Byline'), 'Content');
		//Each ticket purchased will help go towards the cost of the events for the weekend.
		/*

		$fields->addFieldToTab('Root.LeftContent', new HTMLEditorField('LeftContent', 'Left Content'));
		$fields->addFieldToTab('Root.RightContent', new HTMLEditorField('RightContent', 'Right Content'));
		 */
		return $fields;
	}
}

class TicketsPage_Controller extends Page_Controller {

	public function init() {
		parent::init();
		// You can include any CSS or JS required by your project here.
		// See: http://doc.silverstripe.org/framework/en/reference/requirements
	}

}
