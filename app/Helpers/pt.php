<?php
use Illuminate\Support\Facades\DB;

function master() {
    $data = DB::table('masters')->first();
    return $data;
}

function domain() {
    $data = DB::table('domain')
    ->orderBy('id', 'ASC')
    ->get();
    return $data;
}

// function indikatorOpd() {
//     $data = DB::table('indikator_opd AS a')
//     ->join('indikator AS b', 'a.indikator_id', '=', 'b.id')
//     ->select('a.*', 'b.id AS idIndi', 'b.indeks_id', 'b.nama_indikator', 'b.keterangan AS ketIndi', 'b.status AS statusIndi')
//     ->where('a.opd_id', $_COOKIE['opd_id'])
//     ->orderBy('a.id', 'ASC')
//     ->get();
    
//     return $data;
// }

function CountDown() {
    $data = 60;
    return $data;
}

function AuthCheck() {
    
    // site key: 6Lf_43olAAAAAAU8Y6kxdFELMwD12p08byX1808S
    // screet key: 6Lf_43olAAAAACK6CUpybqcoHqr8Wn4wpeEHBihP
    if(!empty($_COOKIE['hak_akses']) && !empty($_COOKIE['id'])){
        if($_COOKIE['hak_akses']==1){
            $data = redirect('/admin/dashboard');
        }elseif($_COOKIE['hak_akses']==2){
            $data = redirect('/asesor/dashboard');
        }elseif($_COOKIE['hak_akses']==3){
            $data = redirect('/opd/dashboard');
        }
    }else{
        $data = view('backend/auth/login');
    }
    return $data;
}
