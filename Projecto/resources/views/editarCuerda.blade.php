@extends('masterPage')

@section('main')
<main>
<section>

<fieldset class="inicio-sesion">
	<div class="container">
		<div class="row">
			<div class="col-md-8 col-md-offset-2 sing-in-master">
				<img src="/images/logo.png" alt="logotipo" class="logo sing-in">

				<form class="form-horizontal" method="POST" action="{{ url('/cuerda').'/'.$cuerda->id.'/edit' }}" enctype="multipart/form-data">
					{{ csrf_field() }}
					{{$cuerda}}
					<input name="_method" type="hidden" value="PUT">



					<div class="form-group{{ $errors->has('name') ? ' has-error' : '' }}">
						<label for="name" class="sing-in">:Nombre</label>
						<input id="name" type="text" class="form-control" name="
						name" value="{{ $cuerda->name }}"  autofocus placeholder="Agregar Nombre">

						@if ($errors->has('name'))
							<span class="help-block">
								<strong>{{ $errors->first('name') }}</strong>
							</span>
						@endif
					</div>

					<div class="form-group{{ $errors->has('description') ? ' has-error' : '' }}">
						<label for="name" class="sing-in">Agregar Descripcion: </label>
						<input id="name" type="text" class="form-control" name="description" value="{{ $cuerda->description }}"  placeholder="Agregar una Descripcion">

						@if ($errors->has('description'))
							<span class="help-block">
								<strong>{{ $errors->first('description') }}</strong>
							</span>
						@endif
					</div>

					<div class="form-group{{ $errors->has('price') ? ' has-error' : '' }}">
						<label for="name" class="sing-in">Agregar precio: </label>
						<input id="name" type="name" class="form-control" name="price"  placeholder="Precio" value="{{ $cuerda->price }}">

						@if ($errors->has('price'))
							<span class="help-block">
								<strong>{{ $errors->first('price') }}</strong>
							</span>
						@endif
					</div>

					<div class="form-group {{ $errors->has('thumbnail') ? ' has-error' : '' }}">

						<label for="name" class="sing-in">Agregar Foto: </label>
						<img src="{{$cuerda->thumbnail}}" alt="foto de {{$cuerda->name}}">
						<input id="name" type="file" class="form-control" name="thumbnail" placeholder="Agregar Foto">
						@if ($errors->has('thumbnail'))
							<span class="help-block">
								<strong>{{ $errors->first('thumbnail') }}</strong>
							</span>
						@endif

					</div>


					<div class="form-group">
						<button class="btn btn-primary" type="submit">Actualizar Instrumento</button>
					</div>

				</form>

				<form class="form-horizontal" method="POST" action="{{ url('/cuerda').'/'.$cuerda->id.'/delete' }}" enctype="multipart/form-data">
					{{ csrf_field() }}
					<input name="_method" type="hidden" value="DELETE">
					<button class="btn btn-danger" type="submit">Eliminar Instrumento</button>
				</form>
			</div>
		</div>
	</div>
</fieldset>

</section>
</main>
@endsection
