<?php

namespace App\Http\Controllers;

use App\Models\girldata;
use App\Models\linkdata;
use Illuminate\Http\Request;

class LinkDataController extends Controller
{
    /**
     * Display a listing of the resource.
     */
    public function index()
    {
        return response()->json([
            'status' => true,
            'linkdata' => linkdata::all(),
            'girldata' => girldata::all()
        ], 200);
    }

    /**
     * Show the form for creating a new resource.
     */
    public function create()
    {
        //
    }

    /**
     * Store a newly created resource in storage.
     */
    public function store(Request $request)
    {
        //
    }

    /**
     * Display the specified resource.
     */
    public function show(linkdata $linkdata)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     */
    public function edit(linkdata $linkdata)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     */
    public function update(Request $request, linkdata $linkdata)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     */
    public function destroy(linkdata $linkdata)
    {
        //
    }
}
