<?php

class counterTest extends \PHPUnit\Framework\TestCase {

/**
 * @test
 * @covers Counter::testNext
 */
    public function testNext()
    {
        $counter = new Counter();
        $this->assertEquals(1, $counter->next());
    }

/**
 * @test
 * @covers Counter::testNext
 */
    public function testNextInvalid()
    {
        $counter = new Counter();
        $this->assertNotTrue(2, $counter->next());
    }

}
