<div class="card w3-round shadow" style="margin: 0px!important" >   
    <ol class="breadcrumb default-breadcrumb" style="margin: 0px!important" >
        @foreach($links as $link)
        <li class="breadcrumb-item {{ isset($link['active'])? 'active' : '' }}">
            <a href="{{ isset($link['url'])? $link['url'] : '#' }}">{{ isset($link['name'])? $link['name'] : '' }}</a>
        </li>
        @endforeach  
    </ol> 
</div>    
<br> 