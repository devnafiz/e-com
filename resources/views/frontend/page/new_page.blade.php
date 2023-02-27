@extends('frontend.main_master')
@section('content')
@section('title')
@if($all_data)
    Hash Collection || {{$all_data->page_title_en}}
@endif
@endsection





<div class="breadcrumb">
  <div class="container">
    <div class="breadcrumb-inner">
      <ul class="list-inline list-unstyled">
        @if($all_data)
        <li><a href="#">{{$all_data->page_title_en}}</a></li>
        @endif
         
      </ul>
    </div>
    <!-- /.breadcrumb-inner --> 
  </div>
  <!-- /.container --> 
</div>
<!-- /.breadcrumb -->
<div class="body-content outer-top-xs">
  <div class='container'>

   
   


    <div class='row'>
      

      
      <!-- /.sidebar -->
      <div class='col-md-12'> 



        <!-- == ==== SECTION – HERO === ====== -->
        
        <div id="category" class="category-carousel hidden-xs">
          <div class="item">
          @if($all_data)
          <div class="image"> <img src="{{ asset('upload/page/'.$all_data->page_image) }}" alt="" class="img-responsive"> </div>
          @else
            <div class="image"> <img src="{{ asset('frontend/assets/images/banners/cat-banner-1.jpg') }}" alt="" class="img-responsive"> </div>

          @endif  
            <div class="container-fluid">
              <div class="caption vertical-top text-left">
              @if($all_data)
                <div class="big-text"> {{$all_data->page_title_en}} </div>
                @endif
               
              </div>
              <!-- /.caption --> 
            </div>
            <!-- /.container-fluid --> 
          </div>
        </div>
   
 


     
       


<!--    //////////////////// START Product Grid View  ////////////// -->

        <div class="search-result-container ">
          <div id="myTabContent" class="tab-content category-list">
            <div class="tab-pane active " id="grid-container">
              <div class="category-product">
                <div class="row">

                @if($all_data)
                 {!! $all_data->page_details_en !!}
                @endif

                

 <!--            //////////////////// Product List View END ////////////// -->







                
              </div>
              <!-- /.category-product --> 
            </div>
            <!-- /.tab-pane #list-container --> 
          </div>
          <!-- /.tab-content -->
          


           



          
        </div>
        <!-- /.search-result-container --> 
        
      </div>
      <!-- /.col --> 
    </div>
  




  </div>
  <!-- /.container --> 
  
</div>
<!-- /.body-content --> 



 




@endsection

