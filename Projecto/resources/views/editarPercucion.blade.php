@extends('masterPage')

@section('main')
<main>
<section>

<fieldset class="inicio-sesion">
	<div class="container">
		<div class="row">
			<div class="col-md-8 col-md-offset-2 sing-in-master">
				<img src="/images/logo.png" alt="logotipo" class="logo sing-in">

				<form class="form-horizontal" method="POST" action="{{ url('/percucion/{{$percucion->id}}/edit') }}" enctype="multipart/form-data">
					{{ csrf_field() }}

					<div class="form-group{{ $errors->has('title') ? ' has-error' : '' }}">
						<label for="name" class="sing-in">:Nombre</label>
						<input id="name" type="text" class="form-control" name="title" value="{{ $percucion->title }}" required autofocus placeholder="Agregar Nombre">

						@if ($errors->has('title'))
							<span class="help-block">
								<strong>{{ $errors->first('title') }}</strong>
							</span>
						@endif
					</div>

					<div class="form-group{{ $errors->has('description') ? ' has-error' : '' }}">
						<label for="name" class="sing-in">Agregar Descripcion: </label>
						<input id="name" type="text" class="form-control" name="name" value="{{ $percucion->description }}" required placeholder="Agregar una Descripcion">

						@if ($errors->has('description'))
							<span class="help-block">
								<strong>{{ $errors->first('description') }}</strong>
							</span>
						@endif
					</div>

					<div class="form-group{{ $errors->has('price') ? ' has-error' : '' }}">
						<label for="name" class="sing-in">Agregar precio: </label>
						<input id="name" type="name" class="form-control" name="name" required placeholder="Precio" value="{{ $percucion->price }}">

						@if ($errors->has('price'))
							<span class="help-block">
								<strong>{{ $errors->first('price') }}</strong>
							</span>
						@endif
					</div>

					<div class="form-group {{ $errors->has('thumbnail') ? ' has-error' : '' }}">

						<label for="name" class="sing-in">Agregar Foto: </label>
						<input id="name" type="file" class="form-control" name="thumbnail" required placeholder="Agregar Foto">
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

				<form class="form-horizontal" method="POST" action="{{ route('/percucion/{{$percucion->id}}/delete') }}" enctype="multipart/form-data">
					{{ csrf_field() }}
					<button class="btn btn-danger" type="submit">Eliminar Instrumento</button>
				</form>
			</div>
		</div>
	</div>
</fieldset>

</section>
</main>
@endsection
