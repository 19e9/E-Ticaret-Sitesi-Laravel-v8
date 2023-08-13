@extends('layouts.admin')

@section('title')
    Siparişler | E-Ticaret SAMÜ
@endsection

@section('content')
    <div class="container">
        <div class="row">
            <div class="col-md-12">
                <div class="card">
                    <div class="card-header bg-primary">
                        <h4 class="text-white ">Yeni Siparişler
                           <a href="{{'order-history'}}" class="btn btn-warning float-right">Geçmiş Siparişlar</a>
                        </h4>
                    </div>
                    <div class="card-body">
                        <table class="table table-bordered">
                            <thead>
                                <tr>
                                    <th>Takip No</th>
                                    <th>Toplam Fiyat</th>
                                    <th>Sipariş Durumu</th>
                                    <th>İşlem</th>
                                </tr>
                            </thead>
                            <tbody>
                                @foreach ($orders as $item)
                                    <tr>
                                        <td>{{ $item->tracking_no }}</td>
                                        <td>{{ $item->total_price }}</td>
                                        <td>{{ $item->status== '0' ?'Siparişiniz Hazırlanıyor' : 'Siparişiniz Tamamlandı' }}</td>
                                        <td>
                                            <a href="{{ url('admin/view-order/'.$item->id) }}" class="btn btn-primary">Göster</a>
                                        </td>
                                    </tr>
                                @endforeach
                            </tbody>
                        </table>
                    </div>
                </div>
            </div>
        </div>
    </div>

@endsection
