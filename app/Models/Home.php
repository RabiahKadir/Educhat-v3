<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Crypt;

class Home extends Model
{
    use HasFactory;

    public function MatchKeyWord($word)
    {
        return 
        DB::table('templates')
        ->whereRaw("MATCH(subject)AGAINST('$word')")
        ->orWhereRaw("MATCH(predicate)AGAINST('$word')")
        ->orWhereRaw("MATCH(object)AGAINST('$word')")
        ->first();
    }

    public function Chat()
    {
        return DB::table('tbl_querydescription')
        ->where('created_at', 'LIKE', date('Y-m-d').'%')
        ->orderBy('id', 'ASC')
        ->get();
    }

}
