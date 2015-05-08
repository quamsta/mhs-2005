<?php
class ContactPage extends UserDefinedForm {

	private static $db = array(
		'LeftTitle' => 'Text',
		'LeftContent' => 'HTMLText',

		'RightTitle' => 'Text',
		'RightContent' => 'HTMLText',
	);

	private static $has_one = array(

	);

	public function getCMSFields() {
		$fields = parent::getCMSFields();

		//$fields->removeByName('Content');

		$fields->addFieldToTab('Root.LeftContent', new TextField('LeftTitle', 'Title'));
		$fields->addFieldToTab('Root.LeftContent', new HTMLEditorField('LeftContent', 'Content'));

		$fields->addFieldToTab('Root.RightContent', new TextField('RightTitle', 'Title'));
		$fields->addFieldToTab('Root.RightContent', new HTMLEditorField('RightContent', 'Content'));

		return $fields;
	}
}

class ContactPage_Controller extends UserDefinedForm_Controller {

}
