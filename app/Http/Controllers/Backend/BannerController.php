<?php

namespace App\Http\Controllers\Backend;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Models\Banner;
use App\Models\BannerPosition;

class BannerController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $all_data=Banner::orderByDesc('id')->paginate(10);
        $positions_data=BannerPosition::where('status','1')->get();
        //dd( $data['positions_data']);

        return view('backend.banner.index',compact('all_data','positions_data'));
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
       $banner_data= $this->BannerValidation();

       if ($request != null && !empty($request->file('image'))) {
        $banner_iamge = uniqid() . '.' . $request->image->getClientOriginalExtension();
        $request->image->move(public_path('upload/banner/'), $banner_iamge);
        $banner_data['image'] = $banner_iamge;
     }

      Banner::insertGetId($banner_data);
      $notification = array(
        'message' => 'Banner Inserted Successfully',
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
        $edit_data=Banner::where('id',$id)->first();
        $positions_data=BannerPosition::where('status','1')->get();
        return view('backend.banner.edit',compact('edit_data','positions_data'));
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
        $banner_data= $this->BannerValidation();
        if ($request != null && !empty($request->file('image'))) {
            $banner_iamge = uniqid() . '.' . $request->image->getClientOriginalExtension();
            $request->image->move(public_path('upload/banner/'), $banner_iamge);
            $banner_data['image'] = $banner_iamge;
         }

         $banner = Banner::where('id', $id)->first();
         $banner->update($banner_data);

         $notification = array(
            'message' => 'Banner Update Successfully',
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
        //
    }

    public function bannerDelete($id){

        $banner = Banner::findOrFail($id);
    	$img = $banner->image;
    	unlink($img);
    	Banner::findOrFail($id)->delete();

    	$notification = array(
			'message' => 'Banner Delectd Successfully',
			'alert-type' => 'info'
		);

		return redirect()->back()->with($notification);
    }

    public function BannerValidation(){


        return request()->validate([
             'name'=>'nullable|string',
             'position_id'=>'nullable',
             'width'=>'nullable|string',
             'height'=>'nullable|string',
             'image' =>'required|file',  



        ]);
    }
}
