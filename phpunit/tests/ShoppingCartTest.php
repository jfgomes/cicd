<?php

class ShoppingCartTest extends PHPUnit_Framework_TestCase {

    public function testTotalStub()
    {
        $stub = $this->createMock(ShoppingCart::class);
        $stub->method('total')
            ->willReturn(1);

        $this->assertEquals(1, $stub->total());
    }

    public function testAddItemStub()
    {
        $shoppingCartItem = $this->prophesize(ShoppingCartItem::class);
        $shoppingCartItem
            ->price()
            ->willReturn(200);

        $shoppingCart = new ShoppingCart();
        $shoppingCart->addItem($shoppingCartItem->reveal());

        $this->assertEquals(200, $shoppingCart->total());
    }

    public function testTotalAddedItemsStub()
    {
        // Item 1
        $shoppingCartItem = $this->prophesize(ShoppingCartItem::class);
        $shoppingCartItem
            ->price()
            ->willReturn(1);

        $shoppingCart = new ShoppingCart();
        $shoppingCart->addItem($shoppingCartItem->reveal());

        //Item 2
        $shoppingCartItem
            ->price()
            ->willReturn(1);

        $shoppingCart->addItem($shoppingCartItem->reveal());

        $this->assertEquals(2, count($shoppingCart->items()));
    }

    public function testAddAttachLogStub()
    {
        $shoppingCart = new ShoppingCart();

        // Create Log
        $logger = $this->prophesize(Logger::class);

        // ?????
        $shoppingCart->attachLogger($logger->reveal());

        // Add item
        $shoppingCartItem = $this->prophesize(ShoppingCartItem::class);
        $shoppingCartItem->price()->willReturn(1);

        $shoppingCart->addItem($shoppingCartItem->reveal());

        // Verify log:
    }

}
