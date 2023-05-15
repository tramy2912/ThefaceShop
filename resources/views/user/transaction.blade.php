@extends('layouts.app_master_user')
@section('css')
    <style>
		<?php $style = file_get_contents('css/user.min.css');echo $style;?>
    </style>
@stop
@section('content')
    <section>
        <div class="title">Danh sách đơn hàng</div>
        <form class="form-inline">
            <div class="form-group " style="margin-right: 10px;">
                <input type="text" class="form-control" value="{{ Request::get('id') }}" name="id" placeholder="ID">
            </div>
            <div class="form-group" style="margin-right: 10px;">
                <select name="status" class="form-control">
                    <option value="">Trạng thái</option>
                    <option value="1" {{ Request::get('status') == 1 ? "selected='selected'" : "" }}>Chờ xác nhận</option>
                    <option value="2" {{ Request::get('status') == 2 ? "selected='selected'" : "" }}>Đang vận chuyển
                    </option>
                    <option value="3" {{ Request::get('status') == 3 ? "selected='selected'" : "" }}>Đã bàn giao
                    </option>
                    <option value="-1" {{ Request::get('status') == -1 ? "selected='selected'" : "" }}>Huỷ bỏ</option>
                </select>
            </div>
            <div class="form-group" style="margin-right: 10px;">
                <button type="submit" class="btn btn-pink btn-sm">Tìm kiếm</button>
            </div>
        </form>
        <table class="table table-striped">
            <thead>
                <tr>
                    <th scope="col">Mã đơn</th>
                    <th scope="col">Họ tên</th>
                    <th scope="col">Tổng tiền</th>
                    <th scope="col">Thời gian đặt hàng</th>
                    <th scope="col">Trạng thái</th>
                    <th scope="col"></th>
                </tr>
            </thead>
            <tbody>
            @foreach($transactions as $transaction)
                <tr>
                    <th scope="row">
                        <a href="{{ route('get.user.order', $transaction->id) }}">DH{{ $transaction->id }}</a>
                    </th>
                    <th>{{ $transaction->tst_name }}</th>
                    <th>{{ number_format($transaction->tst_total_money,0,',','.') }} đ</th>
                    <th>{{  $transaction->created_at }}</th>
                    <th>
                        <span
                            class="label label-{{ $transaction->getStatus($transaction->tst_status)['class'] }}">
                            {{ $transaction->getStatus($transaction->tst_status)['name'] }}
                        </span>
                    </th>
                    <th>
                    @if($transaction->getStatus($transaction->tst_status)['name'] =="Chờ xác nhận")
                         <a href="{{ route('admin.action.transaction',['cancel', $transaction->id]) }}" ><i class="fa fa-close"></i></a>
                    {{-- @else
                        <button type="submit" class="btn btn-primary" disabled><i class="fa fa-trash"></i></button> --}}
                    @endif
                    </th>
                    {{-- <button type="submit" class="btn btn-primary active"></button> --}}
                </tr>
            @endforeach
            </tbody>
        </table>

    </section>
@stop
