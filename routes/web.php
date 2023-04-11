<?php

use App\Http\Livewire\HomeComponent;
use App\Http\Livewire\CartComponent;
use App\Http\Livewire\DetailsComponent;
use App\Http\Livewire\ShopComponent;
use App\Http\Livewire\CheckoutComponent;
use App\Http\Livewire\CategoryComponent;
use Illuminate\Support\Facades\Route;

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/

// Route::get('/', function () {
//    return view('welcome');
// });

Route::get('/',HomeComponent::class)->name('home.index');
Route::get('/shop',ShopComponent::class)->name('shop');
Route::get('/product/{slug}',DetailsComponent::class)->name('product.details');
Route::get('/cart',CartComponent::class)->name('shop.cart');
Route::get('/checkout',CheckoutComponent::class)->name('shop.checkout');
Route::get('/product-category/{slug}',CategoryComponent::class)->name('product.category');
