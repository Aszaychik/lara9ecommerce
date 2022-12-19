<?php

namespace App\Http\Livewire;

use Livewire\Component;
use Cart;

class CartComponent extends Component
{
    public $name;
    public $email;
    public $phone;
    public $city;
    public $address;
    public $post_code;
    public $formCheckout;

    public function increaseQuantity($rowId)
    {
        $product = Cart::instance('cart')->get($rowId);
        $qty = $product->qty + 1;
        Cart::instance('cart')->update($rowId, $qty);
        $this->emitTo('cart-icon-component', 'refreshComponent');
    }

    public function decreaseQuantity($rowId)
    {
        $product = Cart::instance('cart')->get($rowId);
        $qty = $product->qty - 1;
        Cart::instance('cart')->update($rowId, $qty);
        $this->emitTo('cart-icon-component', 'refreshComponent');

    }

    public function destroy($id)
    {
        Cart::instance('cart')->remove($id);
        $this->emitTo('cart-icon-component', 'refreshComponent');

        session()->flash('success_message', 'Item has been Removed!');
    }

    public function clearAll()
    {
        Cart::instance('cart')->destroy();
        session()->flash('success_message', 'All Item has been Removed!');
        $this->emitTo('cart-icon-component', 'refreshComponent');

    }

    public function checkout()
    {
        $this->validate([
            'name' => 'required',
            'email' => 'required|email',
            'phone' => 'required',
            'city' => 'required',
            'address' => 'required',
            'post_code' => 'required',
        ]);
    }

    public function mount()
    {
        $this->formCheckout = true;
    }


    public function render()
    {
        return view('livewire.cart-component');
    }
}
