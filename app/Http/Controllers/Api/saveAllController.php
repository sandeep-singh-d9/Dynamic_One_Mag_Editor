<?php

namespace App\Http\Controllers\Api;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use App\Model\userBook;
use DB;

class saveAllController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $library = userBook::get();
        return response()->json([
            'success'    => true,
            'data'       => $library,
            'message'    => 'Library Data found',
        ]);
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
        $resp = $this->commonStore($request);
        return $resp;
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
        try{
            $user = \DB::table('user_books')->where('user_id',1)->first();
            if ($user) {
                $user->front_cover = $user->front_cover ? unserialize($user->front_cover) : '';
                $user->inside_front_cover = $user->inside_front_cover ? unserialize($user->inside_front_cover) : '';
                $user->inside_back_cover = $user->inside_back_cover ? unserialize($user->inside_back_cover) : '';
                $user->back_cover = $user->back_cover!='' ? unserialize($user->back_cover) : '';
                return response()->json([
                    'message'     => 'found!',
                    'data'      => $user,
                    'success'   => true,
                ], 200);
            } else {
                return response()->json([
                    'message'     => 'found!',
                    'data'      => $user,
                    'success'   => true,
                ], 200);
            }
            
        } catch (\Exception $e) {
            // dd($e);
            return response()->json([
                'message'     => 'something went wrong!',
                'data'      => '',
                'success'   => false,
            ], 404);
        }
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        //
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
        //
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
    public function commonStore($request){
        try {
            DB::beginTransaction();
            $makeSerialize = serialize($request->all());
            $userdata = \DB::table('user_books')->where('user_id',1)->first();
            
            if($userdata){
                userBook::where('user_id', 1)->update([
                    $request->get('columnName')   => $makeSerialize,
                    ]);
            }else{
                userBook::create([
                    'user_id'   => 1,
                    $request->get('columnName')   => $makeSerialize,
                ]);
            }
            
            DB::commit();
            return response()->json([
                'message'     => 'Created.',
                'data'      => $data,
                'success'   => true,
            ], 200);
        }catch(\Exception $e) {
            dd($e);
            DB::rollBack();
            return response()->json([
                'message'     => "Internal server error.",
                'data'      => $e,
                'success'   => false,
            ], 500);
        }         
    }
}

