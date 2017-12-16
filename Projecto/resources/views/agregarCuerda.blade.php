@extends('masterPage')

@section('main')
<main>
<section>
<fieldset class="inicio-sesion">
<div class="container">
    <div class="row">
        <div class="col-md-8 col-md-offset-2 sing-in-master">
					<span>@if ($errors)
						{{ $errors }}
					@endif</span>
            <img src="/images/logo.png" alt="logotipo" class="logo sing-in">

        <form class="form-horizontal" method="POST" action="{{ url('/cuerda/crear') }}" enctype="multipart/form-data">
                        {{ csrf_field() }}

                        <div class="form-group{{ $errors->has('name') ? ' has-error' : '' }}">
                            <label for="name" class="sing-in">:Nombre</label>
                            <input id="name" type="text" class="form-control" name="name" value="{{ old('name') }}" required autofocus placeholder="Agregar Nombre">

														@if ($errors->has('name'))
																<span class="help-block">
																		<strong>{{ $errors->first('name') }}</strong>
																</span>
														@endif
                        </div>

                        <div class="form-group{{ $errors->has('description') ? ' has-error' : '' }}">
                            <label for="name" class="sing-in">Agregar Descripcion: </label>
                            <input id="name" type="text" class="form-control" name="description" value="{{ old('description') }}" required placeholder="Agregar una Descripcion">

														@if ($errors->has('description'))
																<span class="help-block">
																		<strong>{{ $errors->first('description') }}</strong>
																</span>
														@endif
                        </div>

                        <div class="form-group{{ $errors->has('price') ? ' has-error' : '' }}">
                            <label for="name" class="sing-in">Agregar precio: </label>
                            <input id="name" type="name" class="form-control" name="price" required placeholder="Precio" value="{{ old('price') }}">

                                @if ($errors->has('price'))
                                    <span class="help-block">
                                        <strong>{{ $errors->first('price') }}</strong>
                                    </span>
                                @endif
                        </div>

                        <div class="form-group">

                            <label for="name" class="sing-in">Agregar Foto: </label>
                            <input id="name" type="file" class="form-control" name="thumbnail" required placeholder="Agregar Foto">

                        </div>


                        <div class="form-group">
                        <button class="btn btn-primary" type="submit">Agregar Instrumento</button>
                        </div>

                    </form>
                </div>
            </div>
        </div>
    </fieldset>
</section>
</main>
@endsection
