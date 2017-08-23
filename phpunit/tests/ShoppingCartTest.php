<?php

class ShoppingCartTest extends PHPUnit_Framework_TestCase {

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
}
