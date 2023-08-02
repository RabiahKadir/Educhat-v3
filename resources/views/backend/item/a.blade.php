<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Cetak | {{ master()->judul }}</title>
    <style>
        table{
            width:100%;
            /* table-layout: fixed; */
            overflow-wrap: break-word;
            font-size:13px;
            border-collapse: collapse;
            font-family: arial, sans-serif;
            font-size: 10px;
        }
        th{
            border: 1px solid grey;
            text-align:center;
            padding: 5px;
        }
        td{
            border: 1px solid grey;
            padding: 5px;
        }
    </style>
</head>
<body>
    <img src="{{ asset('assets/backend/dist/img/logo_surat.jpg') }}" alt="">
    <center><h3><b>PEMERINTAH KABUPATEN BENGKALIS <br> KECAMATAN SIAK KECIL</b></h3></center>
    <center><h1><b>DESA LUBUK MUDA</b></h1></center>
    <center><h4><b>Jalan Jend. Sudirman No. 166 Lubuk Muda 28771 <br> Hp: 081234567812 E-Mail: info@desa-lubukmuda.id</b></h4></center>
    <hr>
    <center><h3><label style="text-transform: uppercase">{{ $data->pelayanan }}</label><br>{{ $no_surat->nomor }}</h3></center>
    <table>
        <tr>
            <td>NIK</td>
            <td>{{ $data->nik }}</td>
        </tr>
        <tr>
            <td>Nama</td>
            <td>{{ $data->nik }}</td>
        </tr>
    </table>
</body>
</html>