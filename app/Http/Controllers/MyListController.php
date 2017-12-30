<?php

namespace App\Http\Controllers;

use App\MyList;
use Illuminate\Http\Request;
use DB;

class MyListController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        //
        return MyList::all();
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
        //
        $myList = MyList::create($request->all());

        return response()->json($myList, 201);
    }

    /**
     * Display the specified resource.
     *
     * @param  \App\MyList  $myList
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        //
        return MyList::findOrFail($id);
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\MyList  $myList
     * @return \Illuminate\Http\Response
     */
    public function edit(MyList $myList)
    {
        //
        return $myList;
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\MyList  $myList
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, MyList $myList)
    {
        //
        $myList = MyList::findOrFail($request->input('id'));
        $myList->update($request->all());

        return response()->json($myList, 200);
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\MyList  $myList
     * @return \Illuminate\Http\Response
     */
    public function destroy(MyList $myList)
    {
        //
        $myList->delete();

        return response()->json(null, 204);
    }


    public function items(Request $request)
    {
        //
        $ids = $request->input('ids');
        if(count($ids) == 0){
            return DB::table('items')->get();
        }
        else{
            return DB::table('items')->whereIn('list_id', $ids)->get();
        }
    }
}
