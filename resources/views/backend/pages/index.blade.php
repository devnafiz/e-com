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
				  <h3 class="box-title">Page List</h3>
				</div>
				<!-- /.box-header -->
				<div class="box-body">
					<div class="table-responsive">
					  <table id="example1" class="table table-bordered table-striped">
						<thead>
							<tr>
								<th>Image </th>
								<th>Name</th>
								<th>url</th>
                                <th>content</th>
								<th>Status</th>
								<th>Action</th>
								 
							</tr>
						</thead>
						<tbody>
	 @foreach($all_data as $item)
	 <tr>

 <td><img src="{{ asset('upload/page/'.$item->page_image) }}" style="width: 70px; height: 40px;"> </td>
		<td>
            @if($item->page_title_en == NULL)
		 	<span class="badge badge-pill badge-danger"> No Title </span>
		 	@else
             {{ $item->page_title_en }}
		 	@endif
			</td>

		<td>{{$item->page_slug_en ?? ''}}</td>
        <td>{{ $item->page_details_en}}</td>
		<td>
		 	@if($item->status == 1)
		 	<span class="badge badge-pill badge-success"> Active </span>
		 	@else
           <span class="badge badge-pill badge-danger"> InActive </span>
		 	@endif

		 </td>
		
		<td width="30%">
 <a href="{{ route('pages.edit',$item->id) }}" class="btn btn-info btn-sm" title="Edit Data"><i class="fa fa-pencil"></i> </a>

 <a href="{{ route('page.delete',$item->id) }}" class="btn btn-danger btn-sm" title="Delete Data" id="delete">
 	<i class="fa fa-trash"></i></a>

@if($item->status == 1)
 <a href="{{ route('page.inactive',$item->id) }}" class="btn btn-danger btn-sm" title="Inactive Now"><i class="fa fa-arrow-down"></i> </a>
	 @else
 <a href="{{ route('page.active',$item->id) }}" class="btn btn-success btn-sm" title="Active Now"><i class="fa fa-arrow-up"></i> </a>
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
				  <h3 class="box-title">Add Page </h3>
				</div>
				<!-- /.box-header -->
				<div class="box-body">
					<div class="table-responsive">


 <form method="post" action="{{ route('pages.store') }}" enctype="multipart/form-data">
	 	@csrf
					   

	 <div class="form-group">
		<h5>Page Name  <span class="text-danger">*</span></h5>
		<div class="controls">
	 <input type="text"  name="page_title_en" class="form-control" > 
	 
	</div>
	</div>


	
    <div class="form-group">
		<h5>Page details <span class="text-danger">*</span></h5>
		<div class="controls">
            
        <textarea id="editor1" class="form-control"  name="page_details_en">

        </textarea>
               

            
     
	  </div>
	</div>
   
    <div class="form-group">
		<h5>Status  <span class="text-danger">*</span></h5>
		<div class="controls">
	     <select name="status" class="form-control">
            <option value="">selerct Status</option>
            <option value="1">Active</option>
            <option value="0">Inactive</option>
         </select>  
	 
	</div>
	</div>



	<div class="form-group">
		<h5> Iamge <span class="text-danger">*</span></h5>
		<div class="controls">
	 <input type="file" name="page_image" class="form-control" >
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