<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Http;
use Illuminate\Support\Facades\Input;
use Illuminate\Support\Facades\Hash;
use Illuminate\Support\Facades\Session;
use Illuminate\Support\Facades\Crypt;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Mail;
use PHPMailer\PHPMailer\PHPMailer;  
use PHPMailer\PHPMailer\Exception;
use Illuminate\Support\Facades\RateLimiter;
use Illuminate\Support\Facades\Response;

use App\Models\Authi;

class AuthController extends Controller
{

    public function __construct() {
        $this->Authi = new Authi;
    }

    public function index()
    {
        return view('backend/auth/login');
    }

    public function LoginAction(Request $request)
    {
        $akun = $this->Authi->cekLogin($request->email);
       
        
        // $res = file_get_contents("https://www.google.com/recaptcha/api/siteverify?secret=6LfoXe8jAAAAAG1MP4oIpgzfE_iC7jDvdIa1Ylp9&response=".$captcha."&remoteip=".$_SERVER['REMOTE_ADDR']);
        // $data = json_decode($res);
        // if($data->success != 1){
        //     return redirect('/loginAdministrator')->with('error','Captcha tidak valid!');
        // }
    
        
        if($akun)
        {
            $pass = Hash::check($request->password, $akun->password);
            if ($pass == 1) {
                setcookie('id', $akun->id, time() + (60 * 60 * 24 * 365), '/');
                setcookie('name', $akun->name, time() + (60 * 60 * 24 * 365), '/');
                setcookie('email', $akun->email, time() + (60 * 60 * 24 * 365), '/');

                return redirect('/admin/dashboard')->with('success','Anda Berhasil Login!');
            } else {
                return redirect('/')->with('error','Email atau asword anda salah!');
            }      
        }
        else{
            return redirect('/')->with('error','Akun anda tidak dikenal!');
        }
    }

    public function ChangePass()
    {
        return view('backend/auth/pass');
    }
    public function changePassword(Request $request)
    {
        if($request->password != $request->password2){
            return redirect('/change-password')->with('error', 'Data gagal diupdate!');
        }
        try {
            DB::table('users')->where('id', $_COOKIE['id'])->update([
                'password'      => Hash::make($request->password)
            ]);

            return redirect('/logout')->with('success', 'Data berhasil diupdate!');
        } catch (\Throwable $th) {
            return redirect('/change-password')->with('error', 'Data gagal diupdate!');
        }
    }

    public function dataPengguna()
    {
        $data['pengguna'] = $this->Authi->dataPengguna();
        $data['hakAkses'] = $this->Authi->HakAkses();
        return view('backend/pages/auth/list_pengguna', $data);
    }
    public function PenggunaPost(Request $request)
    {
        try {
            DB::table('users')->insert([
                'hak_akses_id'           => $request->hak_akses_id,
                'name'                   => $request->name,
                'email'                  => $request->email,
                'password'               => Hash::make($request->password),
            ]);
        } catch (\Throwable $th) {
            return redirect('/admin-pengguna')->with('error', 'Data gagal disimpan!');
        }
        
        return redirect('/admin-pengguna')->with('success', 'Data berhasil disimpan!');
    }

    public function loginPost(Request $request)
    {
        // $captcha = $request->post('g-recaptcha-response');
        // $res = file_get_contents("https://www.google.com/recaptcha/api/siteverify?secret=6Lftp70jAAAAAHoRfsj1AvAue0GgwMn8N1BzHSRv&response=".$captcha."&remoteip=".$_SERVER['REMOTE_ADDR']);
        // $data = json_decode($res);
        // if($data->success != 1){
        //     return redirect('/auth')->with('error','Recaptcha tidak valid!');
        // }

        
        
        $akun = $this->Authi->mobileLogin($request->email);
        if($akun) {
            $pass = Hash::check($request->password, $akun->password);
            if ($pass == 1) {
                if($akun->hak_akses_id==3 || $akun->hak_akses_id==4 || $akun->hak_akses_id==5) {
                    
                    DB::table('users')->where('id', $akun->id)->update([
                        'player_id'  => $request->input_user_id
                    ]);

                    setcookie('login', '1', time() + (60 * 60 * 24 * 365), '/');
                    setcookie('hak_akses', $akun->hak_akses_id, time() + (60 * 60 * 24 * 365), '/');
                    setcookie('id', $akun->id, time() + (60 * 60 * 24 * 365), '/');
                    setcookie('name', $akun->name, time() + (60 * 60 * 24 * 365), '/');
                    setcookie('email', $akun->email, time() + (60 * 60 * 24 * 365), '/');
                    setcookie('player_id', $akun->player_id, time() + (60 * 60 * 24 * 365), '/');

                    return redirect('/mobile/beranda')->with('sukses','Anda lerhasil login!');
                }
                else {
                    return redirect('/mobile')->with('error','Akun ditolak!'); 
                }
           
            } else {
                return redirect('/mobile')->with('error','Pasword anda salah!');
            }      
        }else {
            return redirect('/mobile')->with('error','Akun anda tidak ditemui!');
        }
    }

    public function LogoutSes()
    {
        setcookie('hak_akses', '', time()-7000000, '/');
        setcookie('id', '', time()-7000000, '/');
        setcookie('name', '', time()-7000000, '/');
        setcookie('email', '', time()-7000000, '/');
        setcookie('player_id', '', time()-7000000, '/');
        return redirect('/');
    }
}
