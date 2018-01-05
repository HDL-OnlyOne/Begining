<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreatePostsTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        //创建posts表 ->
        Schema::create('posts',function (Blueprint $table){
            //设置table字段及类型
            $table->increments('id');
            $table->string('title',100)->default('');
            $table->text('content');
            $table->integer('user_id')->default(0);
            $table->timestamps();

        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        //
    }
}
