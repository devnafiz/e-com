@extends('admin.admin_master')
@section('admin')


  <!-- Content Wrapper. Contains page content -->
  
	  <div class="container-full">
		<!-- Content Header (Page header) -->
		 

		<!-- Main content -->
		<section class="content">
		  <div class="row">
			   
		 

			<div class="col-8">

			 <div class="box">
				<div class="box-header with-border">
				  <h3 class="box-title">Banner List</h3>
				</div>
				<!-- /.box-header -->
				<div class="box-body">
					<div class="table-responsive">
					  <table id="example1" class="table table-bordered table-striped">
						<thead>
							<tr>
								<th>Banner Image </th>
								<th>Name</th>
								<th>Position</th>
								<th>Status</th>
								<th>Action</th>
								 
							</tr>
						</thead>
						<tbody>
	 @foreach($all_data as $item)
	 <tr>

 <td><img src="{{ asset('upload/banner/'.$item->image) }}" style="width: 70px; height: 40px;"> </td>
		<td>
            @if($item->name == NULL)
		 	<span class="badge badge-pill badge-danger"> No Title </span>
		 	@else
             {{ $item->name }}
		 	@endif
			</td>

		<td>{{ $item->position_id }}</td>
		<td>
		 	@if($item->status == 1)
		 	<span class="badge badge-pill badge-success"> Active </span>
		 	@else
           <span class="badge badge-pill badge-danger"> InActive </span>
		 	@endif

		 </td>
		
		<td width="30%">
 <a href="{{ route('banner.edit',$item->id) }}" class="btn btn-info btn-sm" title="Edit Data"><i class="fa fa-pencil"></i> </a>

 <a href="{{ route('banner.delete',$item->id) }}" class="btn btn-danger btn-sm" title="Delete Data" id="delete">
 	<i class="fa fa-trash"></i></a>

@if($item->status == 1)
 <a href="{{ route('slider.inactive',$item->id) }}" class="btn btn-danger btn-sm" title="Inactive Now"><i class="fa fa-arrow-down"></i> </a>
	 @else
 <a href="{{ route('slider.active',$item->id) }}" class="btn btn-success btn-sm" title="Active Now"><i class="fa fa-arrow-up"></i> </a>
	 @endif

		</td>
							 
	 </tr>
	  @endforeach
						</tbody>
						 
					  </table>
					</div>
				</div>
				<!-- /.box-body -->
			  </div>
			  <!-- /.box -->

			          
			</div>
			<!-- /.col -->


<!--   ------------ Add Slider Page -------- -->


          <div class="col-4">

			 <div class="box">
				<div class="box-header with-border">
				  <h3 class="box-title">Add Banner </h3>
				</div>
				<!-- /.box-header -->
				<div class="box-body">
					<div class="table-responsive">


 <form method="post" action="{{ route('banner.store') }}" enctype="multipart/form-data">
	 	@csrf
					   

	 <div class="form-group">
		<h5>Banner Name  <span class="text-danger">*</span></h5>
		<div class="controls">
	 <input type="text"  name="name" class="form-control" > 
	 
	</div>
	</div>


	<div class="form-group">
		<h5>Position <span class="text-danger">*</span></h5>
		<div class="controls">
            
        <select name="position_id" class="form-control">
                @foreach($positions_data  as $val)
                <option value="{{$val->id}}">{{$val->name}}</option>

                @endforeach

            </select>
     
	  </div>
	</div>
    <div class="form-group">
		<h5>Banner Width  <span class="text-danger">*</span></h5>
		<div class="controls">
	 <input type="text"  name="width" class="form-control" > 
	 
	</div>
	</div>
    <div class="form-group">
		<h5>Banner height  <span class="text-danger">*</span></h5>
		<div class="controls">
	 <input type="text"  name="height" class="form-control" > 
	 
	</div>
	</div>



	<div class="form-group">
		<h5>Banner Iamge <span class="text-danger">*</span></h5>
		<div class="controls">
	 <input type="file" name="image" class="form-control" >
     @error('image') 
	 <span class="text-danger">{{ $message }}</span>
	 @enderror 
	  </div>
	</div>
					 

			 <div class="text-xs-right">
	<input type="submit" class="btn btn-rounded btn-primary mb-5" value="Add New">					 
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