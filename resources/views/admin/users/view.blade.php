@extends('layouts.admin')

@section('content')
<div class="container">
    <div class="row">
        <div class="col-md-12">
            <div class="card">
                <div class="card-header">
                <h4>Üye Bilgileri
                    <a href="{{ url('users')}}" class="btn btn-primary btn-sm float-right">Geri Dön</a>
                </h4>
                <hr>
                </div>
                    <div class="card-body">
                        <div class="row">
                            <div class="col-md-4 mt-3">
                                <label for="">Role</label>
                                <div class="p-2 border">{{  $users->role_as == '0'? 'Müşteri':'Yönetici' }}</div>
                            </div>
                            <div class="col-md-4 mt-3">
                                <label for="">Ad</label>
                                <div class="p-2 border">{{  $users->name }}</div>
                            </div>
                            <div class="col-md-4 mt-3">
                                <label for="">Soyad</label>
                                <div class="p-2 border">{{  $users->last_name }}</div>
                            </div>
                            <div class="col-md-4 mt-3">
                                <label for="">E-posta</label>
                                <div class="p-2 border">{{  $users->email }}</div>
                            </div>
                            <div class="col-md-4 mt-3">
                                <label for="">Cep Telefon</label>
                                <div class="p-2 border">{{  $users->phone }}</div>
                            </div>
                            <div class="col-md-4 mt-3">
                                <label for="">il</label>
                                <div class="p-2 border">{{  $users->city }}</div>
                            </div>
                            <div class="col-md-4 mt-3">
                                <label for="">İlçe</label>
                                <div class="p-2 border">{{  $users->state }}</div>
                            </div>
                            <div class="col-md-4 mt-3">
                                <label for="">Mahalle</label>
                                <div class="p-2 border">{{  $users->nhood }}</div>
                            </div>
                            <div class="col-md-4 mt-3">
                                <label for="">Açık Adres</label>
                                <div class="p-2 border">{{  $users->addres1 }}</div>
                            </div>
                            <div class="col-md-4 mt-3">
                                <label for="">Adres Başlığı</label>
                                <div class="p-2 border">{{  $users->addres2 }}</div>
                            </div>
                            <div class="col-md-4 mt-3">
                                <label for="">Posta Kodu</label>
                                <div class="p-2 border">{{  $users->zipcode }}</div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
@endsection
