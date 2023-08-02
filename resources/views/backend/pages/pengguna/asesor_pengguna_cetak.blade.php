<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Cetak Pengguna | {{ master()->judul }}</title>
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
    <center><h4>SIPENDEKAR <br> SISTEM INFORMASI PENILAIAN INDIKATOR SPBE <br> DATA PENGGUNA ASESOR </h4></center>
    <table style="border-collapse: collapse; border-spacing: 0; width: 100%;">
        <thead>
        <tr>
            <th>No</th>
            <th>Nama Lengkap</th>
            <th>Email</th>
            <th>Membawahi</th>
            <th>Otoritas</th>
            <th>Status</th>
        </tr>
        </thead>
        <tbody>
            @foreach ($data as $key => $p)
                <tr>
                    <td>{{ ++$key }}</td>
                    <td>{{ $p->name }}</td>
                    <td>{{ $p->email }}</td>
                    <td>{{ $p->nama_domain }}</td>
                    <td>{{ $p->hak_akses }}</td>
                    <td>
                        @if($p->status=='1')
                        Aktif
                        @else
                        Nonaktif
                        @endif
                    </td>
                </tr>
            @endforeach
       
        </tbody>
    </table>
</body>
</html>