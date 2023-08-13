@extends('layouts.admin')

@section('content')
<div class="card">
    <div class="card-header">
    <h4>Kayıtlı Üyeler</h4>
    <hr>
    </div>
        <div class="card-body">
        <table class="table table-bordered table-striped">
            <thead>
                <tr>
                    <th>ID</th>
                    <th>Ad-Soyad</th>
                    <th>E-posta</th>
                    <th>Cep Telefon Numarası</th>
                    <th>İşlem</th>
                </tr>
            </thead>
            <tbody>
                @foreach($users as $item)
                    <tr>
                        <td>{{ $item->id }}</td>
                        <td>{{ $item->name.' '.$item->last_name }}</td>
                        <td>{{ $item->email }}</td>
                        <td>{{ $item->phone }}</td>
                        <td>
                            <a href="{{ url('view-user/'.$item->id) }}" class="btn btn-primary btn-sm">Göster</a>
                        </td>
                    </tr>
                @endforeach
            </tbody>
        </table>
        </div>
    </div>
@endsection
