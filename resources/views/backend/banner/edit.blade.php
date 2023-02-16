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
				  <h3 class="box-title">Edit Banner </h3>
				</div>
				<!-- /.box-header -->
				<div class="box-body">
					<div class="table-responsive">


 <form method="post" action="{{ route('banner.update',$edit_data->id) }}" enctype="multipart/form-data">
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
        <select name="position_id" class="form-control">
                @foreach($positions_data  as $val)
                <option value="{{$val->id}}" {{($edit_data->position_id==$val->id)?'selected' :''}} >{{$val->name}}</option>

                @endforeach

            </select>
     
	  </div>
	</div>
    <div class="form-group">
		<h5>Banner Width <span class="text-danger">*</span></h5>
		<div class="controls">
	 <input type="text"  name="width" class="form-control" value="{{ $edit_data->width }}" > 
	 
	</div>
	</div>

    <div class="form-group">
		<h5>Banner Height <span class="text-danger">*</span></h5>
		<div class="controls">
	 <input type="text"  name="height" class="form-control" value="{{ $edit_data->height }}" > 
	 
	</div>
	</div>



	<div class="form-group">
		<h5>Banner Image <span class="text-danger">*</span></h5>
		<div class="controls">
	 <input type="file" name="image" class="form-control" >
     @error('image') 
	 <span class="text-danger">{{ $message }}</span>
	 @enderror 

     @if ($edit_data->image &&
                        file_exists(public_path('upload/banner/' . $edit_data->image)))
                        <a class="text-black" href="{{ asset('upload/banner/' . $edit_data->image) }}" download><i class="fa fa-file fa-3x" aria-hidden="true"></i></a>
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