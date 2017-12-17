@extends('masterPage')

@section('main')
	<main>
		<section>
			<h2> Cuerdas </h2>
		</section>

		<section style="color:white">
			<table class="table col-xs-8">
				<tr>
					<th>Number</th>
					<th>Nombre</th>
					<th>Precios</th>
					<th>Acciones</th>
				</tr>
				<tbody class="table-striped table-hover">
					@foreach ($cuerdas as $cuerda)
						<tr>
							<td>{{$cuerda->id}}</td>
							<td>{{$cuerda->name}}</td>
							<td>{{$cuerda->price}}</td>
							<td><a href="/cuerda/{{$cuerda->id}}/edit">Editar</a></td>
						</tr>
					@endforeach
				</tbody>
			</table>
		</section>

		<section>

		</section>
	</main>
@endsection
