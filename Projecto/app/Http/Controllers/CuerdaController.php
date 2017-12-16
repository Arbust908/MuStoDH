<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Cuerda;
use App\Http\Controllers\Session;
//si necesitas usar un metodo laravel siempre declararlo

class CuerdaController extends Controller
{
     /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $cuerdas = Cuerda::All(); 

		return view('categoria-cuerda',compact('cuerdas'));  
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        return view('agregarCuerda');
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
			$reglas = [ 
				"title" => "required|string",
				"description" => "required|string",
				"price" =>  "required|numeric|min:0|max:999999",
				"thumbnail" => "image"
			];

			$mensajes = [ 
				"required" => ":attribute es requerido",
				"min" => ":attribute tiene un mínimo de :min",
				"max" => ":attribute tiene un maximo de :max"
			];

			$this->validate($request, $reglas, $mensajes);

			$foto = $request->file("thumbnail");

			$nombreFoto = $foto->storePublicly("public/thumbnails");

			$cuerda = new Cuerda(); 
			$cuerda->title = $request["title"];
			$cuerda->description = $request["description"];
			$cuerda->price = $request["price"];
			$cuerda->poster = $nombreFoto;

			$cuerda->save(); 
            Session::flash('message', 'El instrumento se creo!');

			return redirect('cuerdas'); 
    }

    /**
     * Display the specified resource.
     *
     * @param  \App\Cuerda  $cuerda
     * @return \Illuminate\Http\Response
     */
    public function show(Cuerda $id)
    {
        $cuerda = Cuerda::find($id);
				return view('cuerda',compact('cuerda')); 
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\Cuerda  $cuerda
     * @return \Illuminate\Http\Response
     */
    public function edit(Cuerda $id)
    {
        $cuerda = Cuerda::find($id);

				return view('editarCuerda',compact('cuerda')); 
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\Cuerda  $cuerda
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, Cuerda $id)
    {
			$viejo = Cuerda::find($id); 


			$reglas = [ 
				"title" => "required|string",
				"description" => "string",
				"price" =>  "numeric|min:0|max:999999",
				"thumbnail" => "image"
			];

			$mensajes = [ 

				"required" => ":attribute es requerido",
				"min" => ":attribute tiene un mínimo de :min",
				"max" => ":attribute tiene un maximo de :max"
			];

			$this->validate($request, $reglas, $mensajes);

            if ($request->file !== NULL) {
               $foto = $request->file("thumbnail");

                $nombreFoto = $foto->storePublicly("public/thumbnails");
                $viejo[0]->poster = $nombreFoto;
            }
			
			$viejo[0]->name = $request["name"];
			$viejo[0]->description = $request["description"];
			$viejo[0]->price = $request["price"];
			
            dd($viejo);
			$viejo[0]->save(); 


		return redirect('/categoria-cuerda');
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Cuerda  $cuerda
     * @return \Illuminate\Http\Response
     */
    public function destroy(Cuerda $id)
    {
			$cuerda = Cuerda::find($id);

			$cuerda[0]->delete();

            //hacer la prefgunta (si queres borrar)
          //  Session::flash('message', 'Se borro Pa!!! XD');
            return redirect('/cuerda');
    }
}
