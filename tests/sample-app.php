<?php
class JAASTest extends PHPUnit_Extensions_Selenium2TestCase
{
    protected function setUp()
    {
        $this->setBrowser('firefox');
        $this->setBrowserUrl('http://localhost/');
    }

    public function testTitle()
    {
        $this->url('http://localhost/');
    }

public function isTextPresent($search)
{
$source = $this->source();
if ( strpos((string)$source,$search) !== FALSE)
return true;
else return false;
}

}
?>
