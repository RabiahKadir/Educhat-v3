<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Crypt;

class Authi extends Model
{
    use HasFactory;

    public function cekLogin($email)
    {
        return DB::table('users')
            ->where('email', $email)
            ->first();
    }

    public function HakAkses()
    {
        return DB::table('hak_akses')
            ->get();
    }
}
