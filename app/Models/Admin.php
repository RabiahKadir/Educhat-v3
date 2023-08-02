<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Support\Facades\DB;

class Admin extends Model
{
    use HasFactory;

    
    public function HakAkses()
    {
        return DB::table('hak_akses')
            ->orderBy('id', 'ASC')
            ->get();
    }
    public function MasterOpd()
    {
        return DB::table('templates')
            ->orderBy('id', 'DESC')
            ->get();
    }
}
