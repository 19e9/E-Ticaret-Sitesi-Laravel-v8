@extends('layouts.front')
@section('title')
    E-Ticaret SAMÜ
@endsection

@section('content')
    @include('layouts.inc.slider')
    <div class="py-5">
        <div class="container">
            <div class="row">
                <h2>Özel Fırsatlar</h2>
                <div class="owl-carousel featured-carousel owl-theme">
                    @foreach ($featured_products as $prod)
                        <div class="item">
                            @if($prod->category)
                                <a href="{{ url('category/'.$prod->category->slug.'/'.$prod->slug) }}">
                            @endif
                            <div class="card">
                                <img src="{{ asset('assets/uploads/products/'.$prod->image) }}" alt="Ürün Resimi">
                                <div class="card-body">
                                    <h5>{{  $prod->name }}</h5>
                                    <span class="float-start"><s> {{   $prod->original_price }} ₺</s></span>
                                    <span class="float-end"> {{   $prod->selling_price }} ₺ </span>
                                </div>
                            </div>
                            </a>
                        </div>
                    @endforeach
                </div>

            </div>
        </div>
    </div>


    <div class="py-5">
        <div class="container">
            <div class="row">
                <h2>Trend Kategoriler</h2>
                <div class="owl-carousel featured-carousel owl-theme">
                    @foreach ($trending_category as $tcategory)

                        <div class="item">
                            <a href="{{ url('category/'.$tcategory->slug) }}">
                            <div class="card">
                                <img src="{{ asset('assets/uploads/category/'.$tcategory->image) }}" alt="Kategori Resimileri">
                                <div class="card-body">
                                    <h5>{{  $tcategory->name }}</h5>
                                    <p>
                                        {{ $tcategory->description }}
                                    </p>
                                </div>
                            </div>
                            </a>
                        </div>
                    @endforeach
                </div>

            </div>
        </div>
    </div>



@endsection

@section('scripts')
<script>
        $('.featured-carousel').owlCarousel({
        loop:true,
        margin:10,
        nav:true,
        dots:false,
        responsive:{
            0:{
                items:2
            },
            600:{
                items:3
            },
            1000:{
                items:5
            }
        }
    })
</script>
@endsection
