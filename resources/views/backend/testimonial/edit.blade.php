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
				  <h3 class="box-title">Edit testimonial </h3>
				</div>
				<!-- /.box-header -->
				<div class="box-body">
					<div class="table-responsive">


 <form method="post" action="{{ route('testimonial.update',$edit_data->id) }}" enctype="multipart/form-data">
	 	@csrf
        @method('PUT')
	 <input type="hidden" name="id" value="{{ $edit_data->id }}">	
	 <input type="hidden" name="old_image" value="{{ $edit_data->image }}">			   

	 <div class="form-group">
		<h5>Banner Name <span class="text-danger">*</span></h5>
		<div class="controls">
	 <input type="text"  name="name" class="form-control" value="{{ $edit_data->name }}" > 
	 
	</div>
	</div>


	<div class="form-group">
		<h5>Position <span class="text-danger">*</span></h5>
		<div class="controls">
      
        <input type="text"  name="position" class="form-control" value="{{ $edit_data->position }}" > 
	  </div>
	</div>
    <div class="form-group">
		<h5>Comment <span class="text-danger">*</span></h5>
		<div class="controls">
            
        <textarea class="form-control"  name="comment">
        {{$edit_data->comment }}
        </textarea>
               

            
     
	  </div>
	</div>
   
    <div class="form-group">
		<h5>Status  <span class="text-danger">*</span></h5>
		<div class="controls">
	     <select name="status" class="form-control">
            <option value="">selerct Status</option>
            <option value="1" {{( $edit_data->status==1 ) ? 'selected' :'' }} >Active</option>
            <option value="0" {{( $edit_data->status==0 ) ? 'selected' :'' }}>Inactive</option>
         </select>  
	 
	</div>
	</div>



	<div class="form-group">
		<h5> Image <span class="text-danger">*</span></h5>
		<div class="controls">
	 <input type="file" name="image" class="form-control" >
     @error('image') 
	 <span class="text-danger">{{ $message }}</span>
	 @enderror 

     @if ($edit_data->image &&
                        file_exists(public_path('upload/testimonial/' . $edit_data->image)))
                        <a class="text-black" href="{{ asset('upload/testimonial/' . $edit_data->image) }}" download><i class="fa fa-file fa-3x" aria-hidden="true"></i></a>
                        @else
                        <h6><span class="badge badge-danger">no file</span></h6>
                        @endif
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