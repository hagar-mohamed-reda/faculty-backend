<li class="dropdown dropdown-notification nav-item"><a class="nav-link nav-link-label" href="#" data-toggle="dropdown"><i class="ficon feather icon-bell"></i><span class="badge badge-pill badge-primary badge-up">{{ Auth::user()->notifications()->count() }}</span></a>
    <ul class="dropdown-menu dropdown-menu-media dropdown-menu-right">
        <li class="dropdown-menu-header">
            <div class="dropdown-header m-0 p-2 w3-padding">
                <h3 class="white">{{ Auth::user()->notifications()->count() }} {{ __('New') }}</h3><span class="notification-title">{{ __('App Notifications') }}</span>
            </div>
        </li>
        <li class="scrollable-container media-list">
            @foreach(Auth::user()->notifications()->latest()->take(30)->get() as $item)
            @php
                $color = randTextColor()
            @endphp
            <a class="d-flex justify-content-between {{ $color }}" href="javascript:void(0)">
                <div class="media d-flex align-items-start {{ $color }}">
                    <div class="media-left">
                        <i class="{{ $item->icon }} font-medium-5 primary {{ $color }}"></i>
                    </div>
                    <div class="media-body">
                        <h6 class="primary media-heading {{ $color }}">{{ $item->title }}</h6><small class="notification-text {{ $color }}"> {{ $item->body }}</small>
                    </div><small>
                        <time class="media-meta {{ $color }}" datetime="{{ $item->created_at }}">{{ $item->created_at }}</time></small>
                </div>
            </a>
            @endforeach 
        </li>
        <li class="dropdown-menu-footer"><a class="dropdown-item p-1 text-center" href="javascript:void(0)">{{ __('Read all notifications') }}</a></li>
    </ul>
</li>