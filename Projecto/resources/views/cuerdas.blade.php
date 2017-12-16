@extends('masterPage')

@section('main')
	<main>
		<section>

		</section>

		<section>
			<table>
				<tr>
					<th>Nombre</th>
					<th>Precios</th>
					<th>Acciones</th>
				</tr>
				@foreach ($cuerdas as $cuerda)
					<tr>
						<td>{{$cuerda->name}}</td>
						<td>{{$cuerda->price}}</td>
						<td><a href="/cuerda/{{$cuerda->id}}/edit">Editar</a><a href="/cuerda/{{$cuerda->id}}/delete">Eliminar</a></td>
					</tr>
				@endforeach
			</table>
		</section>

		<section>

		</section>
	</main>
@endsection
