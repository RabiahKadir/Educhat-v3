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

use App\Models\Home;

class HomeController extends Controller
{
    public function __construct() {
        $this->Home = new Home;
    }

    public function index()
    {
        $data['chat'] = $this->Home->Chat();
        return view('chat', $data);
    }
    public function getChat()
    {
        $data = $this->Home->Chat();
        echo json_encode($data);
    }
    public function ChatPost(Request $request)
    {
        $teks = $request->post('teks');
        $a = $this->Home->MatchKeyWord($teks);

        if(empty($a)){
            $result = $teks;
            $myfile = fopen("db.txt", "w");
            fwrite($myfile, $result);
            fclose($myfile);
            exec('C:/Users/Administrator/AppData/Local/Programs/Python/Python311/python3.exe userinput.py', $output);
        }else{
            $result = $a->templateresponse;
            $myfile = fopen("db.txt", "w");
            fwrite($myfile, $result);
            fclose($myfile);
            exec('C:/Users/Administrator/AppData/Local/Programs/Python/Python311/python3.exe userinput.py', $output);
        }
        

        // $type= $output[3];
        // $tag= $output[7];


        $type= '';
        $tag= '';

        if(isset($output[8])){
            $subject= $output[8];
        }else{
            $subject= '';
        }
        if(isset($output[9])){
            $predicate= $output[9];
        }else{
            $predicate= '';
        }
        if(isset($output[10])){
            $object= $output[10];
        }else{
            $object= '';
        }


        DB::table('tbl_querydescription')->insert([
            'input'         => $teks,
            'query'         => $output[0],
            'type'          => $type,
            'tag'           => $tag,
            'subject'       => $subject,
            'predicate'     => $predicate,
            'object'        => $object,
        ]);

        if(empty($a) && !empty($subject) || empty($a) && !empty($predicate) || empty($a) && !empty($object)){
            DB::table('templates')->insert([
                'subject'         => $subject,
                'predicate'       => $predicate,
                'object'          => $object,
				'templatekeyword' => $teks,
            ]);
        }

    }

    
}
