<?php

class counterTest extends PHPUnit\Framework\TestCase {

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

}
