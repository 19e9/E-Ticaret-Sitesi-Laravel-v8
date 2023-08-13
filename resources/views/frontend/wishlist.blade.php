@extends('layouts.front')

@section('title')
    Sepetim
@endsection

@section('content')

<div class="py-3 mb-4 shadow-sm bg-warning border-top">
    <div class="container">
        <h6 class="mb-8">
             <a href="{{ url('/') }}">
                 AnaSayfa
             </a> /
             <a href="{{ url('wishlist') }}">
                Favorilerim
             </a>
         </h6>
    </div>
</div>

<div class="container my-5">
    <div class="card shadow ">
        <div class="card-body">
        @if($wishlist->count() > 0 )
            @foreach ($wishlist as $item)
               <div class="row product_data">
                   <div class="col-md-2 my-auto">
                       <img src="{{ asset('assets/uploads/products/'.$item->products->image) }}" height="70px" width="70px" alt="Resim Burda">
                   </div>
                   <div class="col-md-2 my-auto">
                       <h6>{{ $item->products->name }}</h6>
                   </div>
                   <div class="col-md-2 my-auto">
                       <h6>{{ $item->products->selling_price }} ₺ </h6>
                   </div>
                   <div class="col-md-2 my-auto">
                       <input type="hidden" class="prod_id" value="{{ $item->prod_id}}">
                       @if( $item->products->qty >= $item->prod_qty )
                            <h6>Stokta var</h6>
                       @else
                           <h6>Stoktan tükendi</h6>
                       @endif
                   </div>
                   <div class="col-md-2 my-auto">
                    <button class="btn btn-success addToCartBtn"><i class="fa fa-shopping-cart"></i> Sepete Ekle</button>
               </div>
                   <div class="col-md-2 my-auto">
                       <button class="btn btn-danger"><i class="fa fa-trash"></i> Sil</button>
                  </div>
               </div>
            @endforeach
           </div>

           @else
            <h4>Favor listenizde ürün yok</h4>
        @endif
    </div>
    </div>
</div>
@endsection
