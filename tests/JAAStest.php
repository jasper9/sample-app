<?php
class JAASTest extends PHPUnit_Extensions_Selenium2TestCase
{
    protected function setUp()
    {
        $this->setBrowser('firefox');
        $this->setBrowserUrl('http://www.jaas.co/');
    }

    public function testTitle()
    {
        $this->url('http://www.jaas.co/');
        $this->assertEquals('Josh As A Service | www.JaaS.co', $this->title());
    }

}
?>
