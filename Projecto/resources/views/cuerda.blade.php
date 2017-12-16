{{--Entiendase que esto es solo a modo de prueba. Gonza estaba haciendo la pagina de un solo Item--}}
@extends('masterPage')

@section('main')
<main>
	<section>
		<article class="Instrumento">
			<h2> {{$cuerda->name}} </h2>
			<img src="{{$cuerda->thumbnail}}" alt="">
			<p> {{$cuerda->description}} </p>
			<h3>${{$cuerda->price}}</h3>
		</article>
	</section>
</main>
@endsection
