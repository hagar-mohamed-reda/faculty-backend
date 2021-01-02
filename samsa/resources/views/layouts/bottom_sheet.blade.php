<div class=" w3-display-bottommiddle bottom-sheet" style="bottom: -100px!important" >
    <button class="btn w3-button shadow w3-white" onclick="$('.bottom-sheet').animate({bottom: 0}, 'slow')" >
        <i class="fa fa-angle-up w3-xlarge" ></i>
    </button>
    <div class="w3-modal-content w3-center shadow w3-padding card bottom-sheet-content" style="border-radius: 0px!important" >
        <div class="row" >
            <div class="col-3 w3-padding" >
                <a href="{{ url('/theme/set') }}" role="button" class="w3-hover-text-indigo w3-padding w3-button w3-circle {{ Theme::isDark()? 'btn-relief-primary' : '' }}"   >
                    <i class="feather icon-sun w3-xxlarge" ></i>
                </a>
                <br>
                {{ __('dark mode') }}
            </div> 

        </div>
    </div>
</div>