<?php

use Faker\Generator as Faker;

$factory->define(App\Cuerda::class, function (Faker $faker) {
    return [

    	 'name' => $faker->unique()->word(),
    	 'description' => $faker->paragraph(),
    	 'price' => $faker->randomFloat(NULL, 0, 6000),
    	 'thumbnail' => 'public/thumbnails/hAM5InQL89AfL6efu1FWkW4mBM9DxaAtEHJ9uLpQ.jpeg',

        //
    ];
});
