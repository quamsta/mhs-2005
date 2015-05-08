<?php
class HomePage extends Page {

	private static $db = array(
		'LeftContent' => 'HTMLText',
		'RightContent' => 'HTMLText',

		'BannerHeader' => 'Text',
		'BannerContent' => 'HTMLText',
		'BannerButtonTitle' => 'Text',

	);

	private static $has_one = array(
		'BannerButtonLink' => 'SiteTree',
	);

	public function getCMSFields() {
		$fields = parent::getCMSFields();

		$fields->removeByName('Sidebar');
		$fields->addFieldToTab('Root.Main', new TextField('Byline'));
		$fields->addFieldToTab('Root.LeftContent', new HTMLEditorField('LeftContent', 'Left Content'));
		$fields->addFieldToTab('Root.RightContent', new HTMLEditorField('RightContent', 'Right Content'));

		$fields->addFieldToTab('Root.Banner', new TextField('BannerHeader'));
		$fields->addFieldToTab('Root.Banner', new HTMLEditorField('BannerContent', 'Content'));
		$fields->addFieldToTab('Root.Banner', new TextField('BannerButtonTitle'));

		$treedropdownfield = new TreeDropdownField('BannerButtonLinkID', "Banner button links to the following page:", "SiteTree");
		$fields->addFieldToTab('Root.Banner', $treedropdownfield);

		return $fields;
	}
}

class HomePage_Controller extends Page_Controller {

	public function init() {
		parent::init();
		// You can include any CSS or JS required by your project here.
		// See: http://doc.silverstripe.org/framework/en/reference/requirements
	}

}
