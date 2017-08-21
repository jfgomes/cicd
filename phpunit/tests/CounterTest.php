<?php

class counterTest extends PHPUnit_Framework_TestCase {

    public function testNext()
    {
        $counter = new Counter();
        $this->assertEquals(1, $counter->next());
    }

    public function testNextInvalid()
    {
        $counter = new Counter();
        $this->assertNotTrue(2, $counter->next());
    }


    public function testSetIncrementException(){

        //$this->expectException(InvalidArgumentException::class);

        $counter = new Counter();
        $counter->setIncrement("string");
    }

}
