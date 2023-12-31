@extends('layouts.front')

@section('title')
    {{ $category->name }}
@endsection

@section('content')

<div class="py-3 mb-4 shadow-sm bg-warning border-top">
    <div class="container">
        <h6 class="mb-0"> Koleksiyonlar / {{ $category->name}} </h6>
    </div>
</div>

<div class="py-5">
    <div class="container">
        <div class="row">
            <h2>{{ $category->name }}</h2>
            @foreach ($products as $prod)
                <div class="col-md-3 mb-3">
                    <div class="card">
                        <a href="{{ url('category/'.$category->slug.'/'.$prod->slug) }}">
                        <img src="{{ asset('assets/uploads/products/'.$prod->image) }}" alt="Product image" width="280" height="400">
                            <div class="card-body">
                                <h5>{{  $prod->name }}</h5>
                                <div class="mt-5">
                                    <span class="float-start"> <s> {{   $prod->original_price }} ₺</s></span>
                                    <span class="float-end">{{   $prod->selling_price }} ₺</span>

                                </div>
                            </div>
                        </a>
                    </div>
                </div>
            @endforeach
        </div>
    </div>
</div>

@endsection
