<div id="brands-carousel" class="logo-slider wow fadeInUp">
      <div class="logo-slider-inner">
        <div id="brand-slider" class="owl-carousel brand-slider custom-carousel owl-theme">
            @if($footer_logo)
            @foreach($footer_logo as $logo)
          <div class="item m-t-15"> <a href="#" class="image"> <img data-echo="{{ asset('upload/banner/'.$logo->image) }}" src="{{ asset('upload/banner/'.$logo->image) }}" alt=""> </a> </div>
          @endforeach
          @endif
          <!--/.item-->
          
         
        </div>
        <!-- /.owl-carousel #logo-slider --> 
      </div>
      <!-- /.logo-slider-inner --> 
      
    </div>