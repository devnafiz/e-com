<?php

namespace App\Http\Controllers\Backend;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Models\Page;
use Image;
use Carbon\Carbon;
use Illuminate\Support\Facades\Validator;

class PageController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
       $data['all_data']=Page::paginate(10);
       return view('backend.pages.index',$data);
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {

        if ($request != null && !empty($request->file('page_image'))) {
            $banner_iamge = uniqid() . '.' . $request->page_image->getClientOriginalExtension();
            $request->page_image->move(public_path('upload/page/'), $banner_iamge);
            $save_url= $banner_iamge;
         }

        $page_id = Page::insertGetId([
          
            'category_id' => $request->category_id,
          
            'page_title_en' => $request->page_title_en,
            'page_details_en' => $request->page_details_en,
            'page_slug_en' =>  strtolower(preg_replace('/[^\w\d]+/', '-', $request->page_title_en)),
           
           
            
  
            'page_image' => $save_url,
  
        
            'status' => 1,
            'created_at' => Carbon::now(),   
  
        ]);

        $notification = array(
			'message' => 'Page Inserted Successfully',
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
        $data['edit_data']=Page::where('id',$id)->first();
        return view('backend.pages.edit',$data);
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
        $page_data= $this->PageValidation();

        if ($request != null && !empty($request->file('page_image'))) {
            $banner_iamge = uniqid() . '.' . $request->page_image->getClientOriginalExtension();
            $request->page_image->move(public_path('upload/page/'), $banner_iamge);
            $page_data['page_image'] = $banner_iamge;
         }

         Page::findOrFail($id)->update($page_data); 
         
         $notification = array(
			'message' => 'Page Update Successfully',
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

    }

    public function pageDel($id){
        $banner = Page::findOrFail($id);
    	$img = $banner->image;
        unlink('upload/page/'.$img);
    	Page::findOrFail($id)->delete();

    	$notification = array(
			'message' => 'Page Delectd Successfully',
			'alert-type' => 'info'
		);

		return redirect()->back()->with($notification);

    }
    public function pageInactive($id){
        Page::findOrFail($id)->update(['status' => 0]);

    	$notification = array(
			'message' => 'Page Active Successfully',
			'alert-type' => 'info'
		);

		return redirect()->back()->with($notification);

    }

    public function pageActive($id){
    	Page::findOrFail($id)->update(['status' => 1]);

    	$notification = array(
			'message' => 'Page Active Successfully',
			'alert-type' => 'info'
		);

		return redirect()->back()->with($notification);

    } // end method 

    public function PageValidation(){


        return request()->validate([
             'category_id'=>'nullable|string',
             'page_title_en'=>'string|max:256',
             'page_details_en'=>'nullable|string',
             'status'=>'nullable|string',
             'page_image' =>'nullable|file',  



        ]);
    }


}
