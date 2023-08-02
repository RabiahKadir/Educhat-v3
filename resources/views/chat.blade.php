<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>EduChatbot-V.3.1.2 - ©  2023 - UKM</title>
    <meta name="csrf_token" content="{{ csrf_token() }}" />
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet">
    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet">
<style>
body {
    background-color: #eee;
}

.chat-btn {
    position: absolute;
    right: 14px;
    bottom: 30px;
    cursor: pointer
}

.chat-btn .close {
    display: none
}

.chat-btn i {
    transition: all 0.9s ease
}

#check:checked~.chat-btn i {
    display: block;
    pointer-events: auto;
    transform: rotate(180deg)
}

#check:checked~.chat-btn .comment {
    display: none
}

.chat-btn i {
    font-size: 22px;
    color: #fff !important
}

.chat-btn {
    width: 50px;
    height: 50px;
    display: flex;
    justify-content: center;
    align-items: center;
    border-radius: 50px;
    background-color: green;
    color: #fff;
    font-size: 22px;
    border: none
}

.wrapper {
    position: absolute;
    right: 20px;
    bottom: 100px;
    width: 400px;
    background-color: #fff;
    border-radius: 5px;
    opacity: 1;
    transition: all 0.4s;
}

#check:checked~.wrapper {
    opacity: 0
}

.header {
    padding: 13px;
    background-color: green;
    border-radius: 5px 5px 0px 0px;
    margin-bottom: 10px;
    color: #fff
}
.foot {
    padding: 13px;
    background-color: grey;
    /* border-radius: 5px 5px 0px 0px; */
    /* margin-bottom: 10px; */
    color: #fff
}

.chat-form {
    /* padding: 15px */
}

.chat-form input,
textarea,
button {
    margin-bottom: 10px
}

.chat-form textarea {
    resize: none
}

.form-control:focus,
.btn:focus {
    box-shadow: none
}

.btn,
.btn:focus,
.btn:hover {
    background-color: green;
    border: green
}

#check {
    display: none !important
}
.flex {
    -webkit-box-flex: 1;
    -ms-flex: 1 1 auto;
    flex: 1 1 auto
}

@media (max-width:991.98px) {
    .padding {
        padding: 1.5rem
    }
}

@media (max-width:767.98px) {
    .padding {
        padding: 1rem
    }
}

.padding {
    padding: 3rem
}

.box.box-warning {
    border-top-color: #f39c12;
}

.box {
    position: relative;
    border-radius: 3px;
    background: #ffffff;
    border-top: 3px solid #d2d6de;
    margin-bottom: 20px;
    width: 100%;
    box-shadow: 0 1px 1px rgba(0,0,0,0.1);
}
.box-header.with-border {
    border-bottom: 1px solid #f4f4f4
}

.box-header.with-border {
    border-bottom: 1px solid #f4f4f4;
}

.box-header {
    color: #444;
    display: block;
    padding: 10px;
    position: relative;
}

.box-header:before, .box-body:before, .box-footer:before, .box-header:after, .box-body:after, .box-footer:after {
    content: " ";
    display: table;
}

.box-header {
    color: #444;
    display: block;
    padding: 10px;
    position: relative
}

.box-header>.fa, .box-header>.glyphicon, .box-header>.ion, .box-header .box-title {
    display: inline-block;
    font-size: 18px;
    margin: 0;
    line-height: 1;
}

.box-header>.box-tools {
    position: absolute;
    right: 10px;
    top: 5px;
}

.box-header>.box-tools [data-toggle="tooltip"] {
    position: relative;
}

.bg-yellow, .callout.callout-warning, .alert-warning, .label-warning, .modal-warning .modal-body {
    background-color: #f39c12 !important;
}

.bg-yellow{
        color: #fff !important;
}

.btn {
    border-radius: 3px;
    -webkit-box-shadow: none;
    box-shadow: none;
    border: 1px solid transparent;
}

.btn-box-tool {
    padding: 5px;
    font-size: 12px;
    background: transparent;
    color: #97a0b3;
}

.direct-chat .box-body {
    border-bottom-right-radius: 0;
    border-bottom-left-radius: 0;
    position: relative;
    overflow-x: hidden;
    padding: 0;
}

.box-body {
    border-top-left-radius: 0;
    border-top-right-radius: 0;
    border-bottom-right-radius: 3px;
    border-bottom-left-radius: 3px;
    padding: 10px;
}
.box-header:before, .box-body:before, .box-footer:before, .box-header:after, .box-body:after, .box-footer:after {
    content: " ";
    display: table;
}

.direct-chat-messages {
    -webkit-transform: translate(0, 0);
    -ms-transform: translate(0, 0);
    -o-transform: translate(0, 0);
    transform: translate(0, 0);
    padding: 10px;
    /* min-height: 70vh; */
    overflow: auto;
}

.direct-chat-messages, .direct-chat-contacts {
    -webkit-transition: -webkit-transform .5s ease-in-out;
    -moz-transition: -moz-transform .5s ease-in-out;
    -o-transition: -o-transform .5s ease-in-out;
    transition: transform .5s ease-in-out;
}



.direct-chat-msg {
    margin-bottom: 10px;
}

.direct-chat-msg, .direct-chat-text {
    display: block;
}

.direct-chat-info {
    display: block;
    margin-bottom: 2px;
    font-size: 12px;
}

.direct-chat-timestamp {
    color: #999;
}

.btn-group-vertical>.btn-group:after, .btn-group-vertical>.btn-group:before, .btn-toolbar:after, .btn-toolbar:before, .clearfix:after, .clearfix:before, .container-fluid:after, .container-fluid:before, .container:after, .container:before, .dl-horizontal dd:after, .dl-horizontal dd:before, .form-horizontal .form-group:after, .form-horizontal .form-group:before, .modal-footer:after, .modal-footer:before, .modal-header:after, .modal-header:before, .nav:after, .nav:before, .navbar-collapse:after, .navbar-collapse:before, .navbar-header:after, .navbar-header:before, .navbar:after, .navbar:before, .pager:after, .pager:before, .panel-body:after, .panel-body:before, .row:after, .row:before {
    display: table;
    content: " ";
}

.direct-chat-img {
    border-radius: 50%;
    float: left;
    width: 40px;
    height: 40px;
}

.direct-chat-text {
    border-radius: 5px;
    position: relative;
    padding: 15px 10px 15px 10px;
    background: #d2d6de;
    border: 1px solid #d2d6de;
    margin: 5px 0 0 50px;
    color: #444;
}

.direct-chat-msg, .direct-chat-text {
    display: block;
}

.direct-chat-text:before {
    border-width: 6px;
    margin-top: -6px;
}

.direct-chat-text:after, .direct-chat-text:before {
    position: absolute;
    right: 100%;
    top: 15px;
    border: solid transparent;
    border-right-color: #d2d6de;
    content: ' ';
    height: 0;
    width: 0;
    pointer-events: none;
}

.direct-chat-text:after {
    border-width: 5px;
    margin-top: -5px;
}

.direct-chat-text:after, .direct-chat-text:before {
    position: absolute;
    right: 100%;
    top: 15px;
    border: solid transparent;
    border-right-color: #d2d6de;
    content: ' ';
    height: 0;
    width: 0;
    pointer-events: none;
}

:after, :before {
    -webkit-box-sizing: border-box;
    -moz-box-sizing: border-box;
    box-sizing: border-box;
}

.direct-chat-msg:after {
    clear: both;
}

.direct-chat-msg:after {
    content: " ";
    display: table;
}

.direct-chat-info {
    display: block;
    margin-bottom: 2px;
    font-size: 12px;
}

.right .direct-chat-img {
    float: right;
}

.direct-chat-warning .right>.direct-chat-text {
    background: #f39c12;
    border-color: #f39c12;
    color: #fff;
}

.right .direct-chat-text {
    margin-right: 50px;
    margin-left: 0;
}

.box-footer {
    border-top-left-radius: 0;
    border-top-right-radius: 0;
    border-bottom-right-radius: 3px;
    border-bottom-left-radius: 3px;
    border-top: 1px solid #f4f4f4;
    padding: 10px;
    background-color: #fff;
}

.box-header:before, .box-body:before, .box-footer:before, .box-header:after, .box-body:after, .box-footer:after {
    content: " ";
    display: table;
}
.input-group-btn {
    position: relative;
    font-size: 0;
    white-space: nowrap;
}

.input-group-btn:last-child>.btn, .input-group-btn:last-child>.btn-group {
    z-index: 2;
    margin-left: -1px;
}

.btn-warning {
    color: #fff;
    background-color: #f0ad4e;
    border-color: #eea236;
} 

</style>
</head>
<body>
<img src="hometutor1.png">
<input type="checkbox" id="check">
<label class="chat-btn" for="check">
    <img class="direct-chat-img" src="{{ asset('educhat.png') }}" alt="message user image">
</i></label>
<div class="wrapper">
    <div class="header">
        <h6><img class="direct-chat-img" src="{{ asset('educhat.png') }}" alt="message user image"> &nbsp; EduChatbot-V.3.1.2 - ©  2023 - UKM</h6>
    </div>
    {{-- <form action="{{ url('/result') }}" method="post" style="overflow-x: hidden;"> --}}
        @csrf
    <div class="chat-form" style="overflow-x: hidden;">
        
            <div class="direct-chat-messages" style="overflow-x: hidden;">
                <div id="messages" style="overflow-y: scroll; height: 250px;padding-left: 15px;padding-right:15px;"> 
                    <div id="chat">
                @foreach ($chat as $p)
                    
                 
                <div class="direct-chat-msg">
                    <div class="direct-chat-info clearfix">
                    <span class="direct-chat-name pull-left">User</span>
                    </div>
        
                    <img class="direct-chat-img" src="https://img.icons8.com/color/36/000000/administrator-male.png" alt="message user image">
                
                    <div class="direct-chat-text">
                        <div style="font-size: 10px;float:right;">{{ tanggal_indonesia_lengkap(substr($p->created_at,0,10)) }}, pukul {{ substr($p->created_at,11,8) }}</div><br>
                    {{ $p->input }}
                    </div>
                
                </div> <br>
                
                <div class="direct-chat-msg right">
                    <div class="direct-chat-info clearfix">
                        <span class="direct-chat-name pull-right">Bot &emsp;</span>
                    </div>
                
                    <img class="direct-chat-img" src="{{ asset('educhat.png') }}" alt="message user image">
        
                    <div class="direct-chat-text">
                        <div style="font-size: 10px;float:right;">{{ tanggal_indonesia_lengkap(substr($p->created_at,0,10)) }}, pukul {{ substr($p->created_at,11,8) }}</div><br>
                        {{ $p->query }}
                    </div>
                </div><br>
                @endforeach
            </div>
            </div>
                
            </div>
        
    </div>
    <div class="foot">
        <input type="hidden" name="url" id="url" value="{{ url('/') }}" class="form-control">
        <div class="row" style="margin-right:10px;">
            <div class="col-md-9">
                <textarea class="form-control" name="teks" id="teks" placeholder="Type Text Here...!" rows="1" cols="10"></textarea>
            </div>
            <div class="col-md-3">
                <button type="button" id="btn" onclick="Proccess()" class="btn btn-success btn-block"><i class="fa fa-send"></i><img id="Loading" style='display:none;width:20px;height:20px;' src="{{ asset('loading.gif') }}"/></button>
                <a href='/ChatBot-V3.1.2/public/admin' target='_blank'><font color="green">Admin</a>
			</div>
        </div>
    </div>
{{-- </form> --}}
    

    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-alpha1/dist/js/bootstrap.bundle.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.7.0/jquery.min.js"></script>
    
    <script>
        
        
            // window.onload=function(){
            
                function Redir(){
                    Submit();
                    $('#Loading').hide();
                document.getElementById("btn").disabled = false;
                }

                function Proccess(){
                    document.getElementById("btn").disabled = true;
            $('#Loading').show();
                var auto = setTimeout(function(){ autoRefresh(); }, 100);
                }
                function autoRefresh(){
                // clearTimeout(auto);
                auto = setTimeout(function(){ Redir(); autoRefresh(); }, 1500);
                }
                
        // }
            
            
        function Submit() {
            
            
            let teks = document.getElementById("teks").value;
            $.ajax({
                type: 'POST',
                url: "{{ url('/result') }}",
                headers: {
                    'Content-Type': 'application/x-www-form-urlencoded',
                    'X-CSRF-TOKEN': $('meta[name="csrf_token"]').attr('content')
                },
                data: {
                    teks: teks
                },
                dataType: 'json',
                async: false,
                success: function(data) {
                    
                }
            });

            div ='';
            $.getJSON("{{ url('getChat') }}", function(jsonData){
                $.each(jsonData, function(i,data){
                    div +='<div class="direct-chat-msg">';
                        div +='<div class="direct-chat-info clearfix">';
                            div +='<span class="direct-chat-name pull-left">User</span>';
                            div +='</div>';

                            div +='<img class="direct-chat-img" src="https://img.icons8.com/color/36/000000/administrator-male.png" alt="message user image">';

                            div +='<div class="direct-chat-text">';
                                div +='<div style="font-size: 10px;float:right;">'+data.created_at+'</div><br>';
                            div +=data.input;
                            div +='</div>';

                            div +='</div> <br>';

                            div +='<div class="direct-chat-msg right">';
                                div +='<div class="direct-chat-info clearfix">';
                                    div +='<span class="direct-chat-name pull-right">Bot &emsp;</span>';
                                    div +='</div>';

                                    div +='<img class="direct-chat-img" src="{{ asset("educhat.png") }}" alt="message user image">';

                                    div +='<div class="direct-chat-text">';
                                        div +='<div style="font-size: 10px;float:right;">'+data.created_at+'</div><br>';
                                        div +=data.query;
                            div +='</div>';
                            div +='</div><br>';
                });
                
                $("#chat").html(div);
                scrollToBottom();
                $('#img').hide();
                document.getElementById("teks").value='';
                
            });
        }
        
        
    </script>

        
        <script>
            const messages = document.getElementById('messages');
                function scrollToBottom() {
                    messages.scrollTop = messages.scrollHeight;
                }
                scrollToBottom();
        </script>
    </body>
</html>
