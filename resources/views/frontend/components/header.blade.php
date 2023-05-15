<section class="top-header desktop">
    <div class="container">
        <div class="content">
            <div class="left">
                {{-- <a href="{{ route('get.static.customer_care') }}" title="Chăm sóc khách hàng" rel="nofollow">Chăm sóc khách hàng</a>
                 <a href="{{ route('get.user.transaction') }}" title="Kiểm tra đơn hàng" rel="nofollow">Kiểm tra đơn hàng</a> --}}
            </div>
            <div class="right">
                @if (Auth::check())
                    <a href="{{ route('get.user.dashboard') }}">Xin chào {{ Auth::user()->name }}</a>
                    <a href="{{ route('get.user.dashboard') }}">Quản lý tài khoản</a>
                    <a href="{{ route('get.logout') }}">Đăng xuất </a>
                @else
                    <a href="{{ route('get.register') }}">Đăng ký</a>
                    <a href="{{ route('get.login') }}">Đăng nhập</a>
                @endif
            </div>
        </div>
    </div>
</section>
<section class="top-header mobile">
    <div class="container">
        <div class="content">
            <div class="left">
                <a href="{{ route('get.static.customer_care') }}" title="Chăm sóc khách hàng" rel="nofollow">Chăm sóc
                    khách hàng</a>
                <a href="{{ route('get.user.transaction') }}" title="Kiểm tra đơn hàng" rel="nofollow">Kiểm tra đơn
                    hàng</a>
                @if (Auth::check())
                    <a href=""> {{ Auth::user()->name }}</a>
                    <a href="{{ route('get.user.dashboard') }}">Quản lý tài khoản</a>
                    <a href="{{ route('get.logout') }}">Đăng xuất </a>
                @else
                    <a href="{{ route('get.register') }}">Đăng ký</a>
                    <a href="{{ route('get.login') }}">Đăng nhập</a>
                @endif
            </div>
        </div>
    </div>
</section>

<div class="commonTop">
    <div id="headers">
        <div class="container header-wrapper">
            <!--Thay đổi-->
            <div class="logo">
                <a href="/" class="desktop">
                    <img src="{{ url('images/logo4.png') }}" style="height: 75px;" alt="Home">
                </a>
                {{--                <a href="/" class="mobile"> --}}
                {{--                    <img src="{{ url('images/icon/LogoMobile.png') }}" alt="Home"> --}}
                {{--                </a> --}}
                <span class="menu js-menu-cate"><i class="fa fa-list-ul"></i> </span>
            </div>
            <div class="search">

                <form action="{{ $link_search ?? route('get.product.list', ['k' => Request::get('k')]) }}"
                    role="search" method="GET">
                    <input type="text" name="k" value="{{ Request::get('k') }}" class="form-control"
                        placeholder="Tìm kiếm sản phẩm ...">
                    <button type="submit" class="btnSearch">
                        <i class="fa fa-search"></i>
                        <span>Tìm kiếm</span>
                    </button>
                </form>
            </div>
            <ul class="right">
                <li>
                    <a href="{{ route('get.shopping.list') }}" title="Giỏ hàng">
                        <i class="la la-shopping-cart"></i>
                        <span class="text">
                            <span class="">Giỏ hàng ({{ \Cart::count() }})</span>
                            <span></span>
                        </span>
                    </a>
                </li>

            </ul>
            <li>
                <div id="menu-main" class="container" style="display: none;">
                    <ul class="menu-list">
                        @foreach ($categories as $item)
                            <li>
                                <a href="{{ route('get.category.list', $item->c_slug . '-' . $item->id) }}"
                                    title="{{ $item->c_name }}" class="js-open-menu">
                                    <img src="{{ pare_url_file($item->c_avatar) }}" alt="{{ $item->c_name }}">
                                    <span>{{ $item->c_name }}</span>
                                    @if (isset($item->children) && count($item->children))
                                        <span class="fa fa-angle-right"></span>
                                    @else
                                        <span></span>
                                    @endif
                                </a>
                                @if (isset($item->children) && count($item->children))
                                    <div class="submenu">
                                        <div class="group">
                                            <div class="item">
                                                @foreach ($item->children as $children)
                                                    <a href="{{ route('get.category.list', $children->c_slug . '-' . $children->id) }}"
                                                        title="{{ $children->c_name }}" class="js-open-menu">
                                                        <span>{{ $children->c_name }}</span>
                                                    </a>
                                                @endforeach
                                            </div>
                                        </div>
                                    </div>
                                @endif
                            </li>
                        @endforeach
                    </ul>
                </div>
            </li>
                {{-- Nav bar --}}
                {{-- <ul class="header__nav-list">
                <li class="header__nav-item index">
                    <a type="submit" href="/" class="header__nav-link active">Trang chủ</a>

                </li>
                <li class="header__nav-item">
                    <a href="/" class="header__nav-link">Giới Thiệu</a>
                </li>
                <li class="header__nav-item">
                    <a href="/" class="header__nav-link ">Sản Phẩm</a>
                    <div id="menu-main" class="container" style="display: none;">
                <ul class="menu-list">
                    @foreach ($categories as $item)
                    <li>
                        <a href="{{  route('get.category.list', $item->c_slug.'-'.$item->id) }}"
                           title="{{  $item->c_name }}" class="js-open-menu">
                            <img src="{{ pare_url_file($item->c_avatar) }}" alt="{{ $item->c_name }}">
                            <span>{{  $item->c_name }}</span>
                            @if (isset($item->children) && count($item->children))
                                <span class="fa fa-angle-right"></span>
                            @else
                                <span></span>
                            @endif
                        </a>
                        @if (isset($item->children) && count($item->children))
                        <div class="submenu">
                            <div class="group">
                                <div class="item">
                                    @foreach ($item->children as $children)
                                        <a href="{{  route('get.category.list', $children->c_slug.'-'.$children->id) }}"
                                           title="{{  $children->c_name }}" class="js-open-menu">
                                            <span>{{  $children->c_name }}</span>
                                        </a>
                                    @endforeach
                                </div>
                            </div>
                        </div>
                        @endif
                    </li>
                    @endforeach
                </ul>
            
                </li>
                <li class="header__nav-item">
                    <a href="news.php" class="header__nav-link active">Tin Tức</a>
                </li>
                <li class="header__nav-item">
                    <a href="contact.php" class="header__nav-link">Liên Hệ</a>
                </li>
            </ul> --}}

        </div>
        <div class="header__nav">
            <ul class="header__nav-list">
                <li class="header__nav-item index">
                    <a type="submit" href="" class="header__nav-link active">Trang chủ</a>

                </li>
                <li class="header__nav-item">
                    <a href="" class="header__nav-link">Giới Thiệu</a>
                </li>

                <li class="header__nav-item">

                    <a href="{{ route('get.category.list', $item->c_slug . '-' . $item->id) }} "
                        class="header__nav-link ">Sản Phẩm</a>
                    <div id="menu-main" class="sub-nav-wrap grid wide" style="display: none;">
                        <ul class="sub-nav">
                            @foreach ($categories as $item)
                                <li>
                                    <a href="{{ route('get.category.list', $item->c_slug . '-' . $item->id) }}"
                                        title="{{ $item->c_name }}" class="js-open-menu">

                                        <span>{{ $item->c_name }}</span>
                                        @if (isset($item->children) && count($item->children))
                                            <span class="fa fa-angle-right"></span>
                                        @else
                                            <span></span>
                                        @endif
                                    </a>
                                    @if (isset($item->children) && count($item->children))
                                        <div class="submenu">
                                            <div class="group">
                                                <div class="item">
                                                    @foreach ($item->children as $children)
                                                        <a href="{{ route('get.category.list', $children->c_slug . '-' . $children->id) }}"
                                                            title="{{ $children->c_name }}" class="js-open-menu">
                                                            <span>{{ $children->c_name }}</span>
                                                        </a>
                                                    @endforeach
                                                </div>
                                            </div>
                                        </div>
                                    @endif
                                </li>
                            @endforeach
                        </ul>
                    </div>

                </li>

                <li class="header__nav-item">
                    <a href="" class="header__nav-link active">Tin Tức</a>
                </li>
                <li class="header__nav-item">
                    <a href="" class="header__nav-link">Liên Hệ</a>
                </li>
            </ul>
        </div>
    </div>
</div>
