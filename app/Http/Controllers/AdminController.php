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
use Illuminate\Support\Facades\File;
use PHPMailer\PHPMailer\PHPMailer;  
use PHPMailer\PHPMailer\Exception;
use PDF;

use App\Models\Admin;

class AdminController extends Controller
{
    public function __construct() {
        $this->Admin = new Admin;
    }

    public function Home()
    {
        $data['pengurusan'] = ''; //$this->Admin->MasterOpd();
        return view('backend/pages/home/admin_home', $data);
    }

    // DATA MASTER
    public function MasterOpd()
    {
        $data['data'] = $this->Admin->MasterOpd();
        return view('backend/pages/master/opd', $data);
    }
    public function opdInsert(Request $request)
    {
        try {
            DB::table('templates')->insert([
                'templatename'          => $request->templatename,
                'templateresponse'      => $request->templateresponse,
                'templatedescriptions'  => $request->templatedescriptions,
                'templatekeyword'       => $request->templatekeyword,
                'templatecategory'      => $request->templatecategory,
                'subject'               => $request->subject,
                'predicate'             => $request->predicate,
                'object'                => $request->object,
            ]);

            return redirect('/admin/templates')->with('success', 'Data berhasil disimpan!');
        } catch (\Throwable $th) {
            return redirect('/admin/templates')->with('error', 'Data gagal disimpan!');
        }
    }
    public function opdUpdate(Request $request)
    {
        try {
            DB::table('templates')->where('id', $request->id)->update([
                'templatename'          => $request->templatename,
                'templateresponse'      => $request->templateresponse,
                'templatedescriptions'  => $request->templatedescriptions,
                'templatekeyword'       => $request->templatekeyword,
                'templatecategory'      => $request->templatecategory,
                'subject'               => $request->subject,
                'predicate'             => $request->predicate,
                'object'                => $request->object,
            ]);

            return redirect('/admin/templates')->with('success', 'Data berhasil diupdate!');
        } catch (\Throwable $th) {
            return redirect('/admin/templates')->with('error', 'Data gagal diupdate!');
        }
    }
    public function opdDelete(Request $request)
    {
        try {
            DB::table('templates')->where('id', $request->id)->delete();

            return redirect('/admin/templates')->with('success', 'Data berhasil dihapus!');
        } catch (\Throwable $th) {
            return redirect('/admin/templates')->with('error', 'Data gagal dihapus!');
        }
    }

}
