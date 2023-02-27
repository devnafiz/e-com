@extends('admin.admin_master')
@section('admin')


  <!-- Content Wrapper. Contains page content -->
  
	  <div class="container-full">
		<!-- Content Header (Page header) -->
		 

		<!-- Main content -->
		<section class="content">
		  <div class="row">
			   
		 

			 


<!--   ------------ Edit Slider Page -------- -->


          <div class="col-12">

			 <div class="box">
				<div class="box-header with-border">
				  <h3 class="box-title">Edit Page </h3>
				</div>
				<!-- /.box-header -->
				<div class="box-body">
					<div class="table-responsive">


 <form method="post" action="{{ route('pages.update',$edit_data->id) }}" enctype="multipart/form-data">
	 	@csrf
        @method('PUT')
	
	 <input type="hidden" name="old_image" value="{{ $edit_data->page_image }}">			   

	 <div class="form-group">
		<h5>Page Title <span class="text-danger">*</span></h5>
		<div class="controls">
	 <input type="text"  name="page_title_en" class="form-control" value="{{ $edit_data->page_title_en }}" > 
	 
	</div>
	</div>


	<div class="form-group">
		<h5>Page Decription <span class="text-danger">*</span></h5>
		<div class="controls">
	 <textarea  name="page_details_en" id="editor1" class="form-control" >{{ $edit_data->page_details_en }}</textarea>
     
	  </div>
	</div>



	<div class="form-group">
		<h5>Page Image <span class="text-danger">*</span></h5>
		<div class="controls">
	 <input type="file" name="page_image" class="form-control" >
     @error('slider_img') 
	 <span class="text-danger">{{ $message }}</span>
	 @enderror 
	  </div>
	</div>
					 

			 <div class="text-xs-right">
	<input type="submit" class="btn btn-rounded btn-primary mb-5" value="Update">					 
						</div>
					</form>




					  
					</div>
				</div>
				<!-- /.box-body -->
			  </div>
			  <!-- /.box --> 
			</div>

 


		  </div>
		  <!-- /.row -->
		</section>
		<!-- /.content -->
	  
	  </div>
  



@endsection