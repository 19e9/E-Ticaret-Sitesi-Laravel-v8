@extends('layouts.front')

@section('title')
    Siparişim
@endsection

@section('content')
    <div class="container py-5">
        <div class="row">
            <div class="col-md-12">
                <div class="card">
                    <div class="card-header">
                        <h4>Sipariş Faturası
                            <a href="{{ url('orders') }}" class="btn btn-warning float-end" >Geri Dön</a>
                        </h4>
                    </div>
                    <div class="card-body">
                        <div class="row">
                            <div class="md-6 order-details">
                            <h5>Adres Detayıları</h5>
                            <hr>
                            <label for="">Ad :</label>
                            <div class="border">{{ $orders->fname }}</div>
                            <label for="">Soyad :</label>
                            <div class="border">{{ $orders->last_name }}</div>
                            <label for="">E-posta :</label>
                            <div class="border">{{ $orders->email }}</div>
                            <label for="">Cep Telefon No :</label>
                            <div class="border">{{ $orders->phone }}</div>
                            <label for="">Sipariş Adresi</label>
                            <div class="border">
                                {{ $orders->city }}, <br>
                                {{ $orders->state }}, <br>
                                {{ $orders->nhood }},<br>
                                {{ $orders->addres1 }},
                                {{ $orders->addres2 }},
                            </div>
                            <label for="">Posta Kodu :</label>
                            <div class="border">{{ $orders->zipcode }}</div>
                            </div>
                        <br>
                        <div class="col-md-6">
                            <h4>Sipariş Detayıları</h4>
                            <hr>
                            <table class="table table-bordered">
                                <thead>
                                    <tr>
                                        <th>Ürün Adı</th>
                                        <th>Adet</th>
                                        <th>Fiyat</th>
                                        <th>Resim</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    @foreach ($orders->orderitems as $item)
                                        <tr>
                                            <td>{{ $item->products->name }}</td>
                                            <td>{{ $item->qty }}</td>
                                            <td>{{ $item->price }}</td>
                                            <td>
                                                <img src="{{ asset('assets/uploads/products/'.$item->products->image) }}" width="50px" alt="Ürün Resmi">
                                            </td>
                                        </tr>
                                    @endforeach
                                </tbody>
                            </table>
                            <h4 class="px-2">Toplam : <span class="float-end">{{ $orders->total_price }} ₺</span></h4>
                            <div class="mt-5 px-2">
                            <label for="">Sipariş Durumu</label>
                            <form action="{{ url('update-order/'.$orders->id)}}" method="POST">
                                @csrf
                                @method('PUT')
                                <select class="form-select" name="order_status">
                                    <option selected>Lütfen sipariş durumunu seçiniz</option>
                                    <option {{ $orders->status == '0'? 'selected':'' }} value="0">Siparişiniz Hazırlanıyor</option>
                                    <option {{ $orders->status == '1'? 'selected':'' }} value="1">Teslim Edildi</option>
                                </select>
                            <button type="submit" class="btn btn-primary float-end mt-3">Güncelle</button>
                        </form>
                        </div>
 
                </div>

            </div>
        </div>
    </div>

@endsection
