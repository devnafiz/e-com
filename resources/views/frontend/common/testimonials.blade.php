  
  <?php
    $testimonial= App\Models\Testimonial::where('status',1)->get();
  ?>
  <div class="sidebar-widget  wow fadeInUp outer-top-vs ">
              <div id="advertisement" class="advertisement">

              @foreach($testimonial as $val)
                <div class="item"> 
                  <div class="avatar"><img src="{{ asset('upload/testimonial/'.$val->image) }}" alt="Image"></div>
                  <div class="testimonials"><em>"</em>{{$val->comment}}<em>"</em></div>
                  <div class="clients_author">{{$val->name}} <span>{{$val->position}}</span> </div>
                  <!-- /.container-fluid --> 
                </div>
               @endforeach 
                <!-- /.item -->
                
               
                <!-- /.item --> 
                
              </div>
              <!-- /.owl-carousel --> 
            </div>