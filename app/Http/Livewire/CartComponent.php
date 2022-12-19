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
    public $snapToken;
    public $formCheckout;
    // public $test1;

    // protected $listeners = [
    //     'emptyCart' => 'emptyCartHandler',
    //     'cartClear' => 'updateCartTotal'
    // ];

    public function mount()
    {
        $this->formCheckout = true;
    }

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

        // $cart = Cart::get()['products'];
        // $cart = Cart::instance('cart')->content();
        $amount = intval(str_replace('.', '', Cart::instance('cart')->total()));


        $customerDetails = [
            'name' => $this->name,
            'email' => $this->email,
            'phone' => $this->phone,
            'city' => $this->city,
            'address' => $this->address,
            'post_code' => $this->post_code,
        ];

        $transactionDetails = [
            'order_id' => uniqid(),
            'gross_amount' => $amount
        ];

        $payload = [
            'transaction_details' => $transactionDetails,
            'customer_details' => $customerDetails
        ];

        $this->formCheckout = false;

        // Set your Merchant Server Key
        \Midtrans\Config::$serverKey = config('services.midtrans.serverKey');
        // Set to Development/Sandbox Environment (default). Set to true for Production Environment (accept real transaction).
        \Midtrans\Config::$isProduction = config('services.midtrans.isProduction');
        // Set sanitization on (default)
        \Midtrans\Config::$isSanitized = config('services.midtrans.isSanitized');
        // Set 3DS transaction for credit card to true
        \Midtrans\Config::$is3ds = config('services.midtrans.is3ds');

        $snapToken = \Midtrans\Snap::getSnapToken($payload);

        $this->snapToken = $snapToken;
    }

    // public function test()
    // {
    //     $this->test1 = true;
    //     $amount = intval(str_replace('.', '', Cart::instance('cart')->total()));

    //     session()->flash('success_message', $amount);

    // }


    // public function emptyCartHandler()
    // {
    //     Cart::instance('cart')->destroy();
    //     $this->emit('cartClear');
    // }


    public function render()
    {
        return view('livewire.cart-component');
    }
}
