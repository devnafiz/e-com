<?php

namespace App\Http\Controllers\Backend;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Models\Testimonial;

class TestimonialController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $data['all_data']=Testimonial::all();
        return view('backend.testimonial.index',$data);
        
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        //
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        $test_data= $this->TestimonialValidation();

        if ($request != null && !empty($request->file('image'))) {
         $banner_iamge = uniqid() . '.' . $request->image->getClientOriginalExtension();
         $request->image->move(public_path('upload/testimonial/'), $banner_iamge);
         $test_data['image'] = $banner_iamge;
      }
 
      Testimonial::insertGetId($test_data);
       $notification = array(
         'message' => 'Testimonial Inserted Successfully',
         'alert-type' => 'success'
     );
 
     return redirect()->back()->with($notification);
       
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        $edit_data= Testimonial::findOrFail($id);
		return view('backend.testimonial.edit',compact('edit_data'));
    }
   

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $id)
    {
        $test_data= $this->TestimonialValidation();
        if ($request != null && !empty($request->file('image'))) {
            $banner_iamge = uniqid() . '.' . $request->image->getClientOriginalExtension();
            $request->image->move(public_path('upload/testimonial/'), $banner_iamge);
            $test_data['image'] = $banner_iamge;
         }

         $testimonial = Testimonial::where('id', $id)->first();
         $testimonial->update($test_data);

         $notification = array(
            'message' => 'Testimonial Update Successfully',
            'alert-type' => 'success'
        );
    
        return redirect()->back()->with($notification);
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
       
        $testimonial = Testimonial::findOrFail($id);
    	$img = $testimonial->image;
    	unlink($img);
    	Testimonial::findOrFail($id)->delete();

    	$notification = array(
			'message' => 'Testimonial Delectd Successfully',
			'alert-type' => 'info'
		);

		return redirect()->back()->with($notification);

    }
    public function testimonialInactive($id){
        Testimonial::findOrFail($id)->update(['status' =>0]);

    	$notification = array(
			'message' => 'Testimonial Inactive Successfully',
			'alert-type' => 'info'
		);

		return redirect()->back()->with($notification);

    }

    public function testimonialActive($id){
        Testimonial::findOrFail($id)->update(['status' => 1]);

    	$notification = array(
			'message' => 'Testimonial Inactive Successfully',
			'alert-type' => 'info'
		);

		return redirect()->back()->with($notification);

    }

    public function TestimonialValidation(){


        return request()->validate([
             'name'=>'nullable|string',
             'position'=>'nullable',
             'comment'=>'nullable|string',
             'status'=>'nullable|string',
             'image' =>'nullable|file',  



        ]);
    }
}
