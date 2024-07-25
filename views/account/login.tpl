<!DOCTYPE html>
<html lang="zh-cn">
<head>
    <meta charset="utf-8">
    <link rel="shortcut icon" href="{{cdnimg "/static/favicon.ico"}}">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
    <meta name="renderer" content="webkit" />
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="author" content="MinDoc" />
    <title>{{i18n .Lang "common.login"}} - Powered by MinDoc</title>
    <meta name="keywords" content="MinDoc,文档在线管理系统,WIKI,wiki,wiki在线,文档在线管理,接口文档在线管理,接口文档管理">
    <meta name="description" content="MinDoc文档在线管理系统 {{.site_description}}">
    <link rel="stylesheet" href="{{cdnjs "/static/v3/css/main.css"}}">
    <script src="{{cdnjs "/static/jquery/1.12.4/jquery.min.js"}}"></script>
</head>
<body class="manual-container">
<div class="min-h-screen bg-gray-100 flex flex-col justify-center py-12 sm:px-6 lg:px-8">
    <div class="sm:mx-auto sm:w-full sm:max-w-md">
        <h2 class="mt-6 text-center text-3xl font-extrabold text-gray-900">
            {{i18n .Lang "common.login"}}
        </h2>
    </div>

    <div class="mt-8 sm:mx-auto sm:w-full sm:max-w-md">
        <div class="bg-white py-8 px-4 shadow sm:rounded-lg sm:px-10">
            <form class="space-y-6" method="POST">
                <div>
                    <div class="mt-1">
                        <input id="username" name="username" required
                               class="appearance-none rounded-md relative block w-full px-3 py-2 border border-gray-300 placeholder-gray-500 text-gray-900 focus:outline-none focus:ring-indigo-500 focus:border-indigo-500 focus:z-10 sm:text-sm"
                               placeholder="{{i18n .Lang "common.email"}} / {{i18n .Lang "common.username"}}">
                    </div>
                </div>
                <div>
                    <div class="mt-1">
                        <input id="password" name="password" type="password" autocomplete="current-password" required
                               class="appearance-none rounded-md relative block w-full px-3 py-2 border border-gray-300 placeholder-gray-500 text-gray-900 focus:outline-none focus:ring-indigo-500 focus:border-indigo-500 focus:z-10 sm:text-sm"
                               placeholder="{{i18n .Lang "common.password"}}">
                    </div>
                </div>

                <div class="flex items-center justify-between">
                    <div class="flex items-center">
                        <input id="remember_me" name="remember_me" type="checkbox"
                               class="h-4 w-4 text-indigo-600 focus:ring-indigo-500 border-gray-300 rounded">
                        <label for="remember_me" class="ml-2 block text-sm text-gray-900">
                            {{i18n .Lang "common.keep_login"}}
                        </label>
                    </div>

                    <div class="text-sm">
                        <a href="#" class="font-medium text-blue-600 hover:text-blue-500">
                            {{i18n .Lang "common.forgot_password"}}
                        </a>
                    </div>
                </div>

                <div>
                    <button type="submit"
                            class="group relative w-full flex justify-center py-2 px-4 border border-transparent text-sm font-medium rounded-md text-white bg-indigo-600 hover:bg-indigo-700 focus:outline-none focus:ring-2 focus:ring-offset-2 focus:ring-indigo-500">

                        Sign in
                    </button>
                </div>
            </form>
            <div class="mt-6">

                <div class="relative">
                    <div class="absolute inset-0 flex items-center">
                        <div class="w-full border-t border-gray-300"></div>
                    </div>
                    <div class="relative flex justify-center text-sm">
                        <span class="px-2 bg-gray-100 text-gray-500 py-1 px-2">Or</span>
                    </div>
                </div>

                <div class="mt-6 grid grid-cols-2 gap-2">
                    <div>
                        <a href="#"
                           class="w-full flex items-center justify-center px-8 py-3 border border-gray-300 rounded-md shadow-sm text-sm font-medium text-gray-700 bg-white hover:bg-gray-50">
                            <svg t="1721901186889" class="h-5 w-5" viewBox="0 0 1024 1024" version="1.1" xmlns="http://www.w3.org/2000/svg" p-id="3480" xmlns:xlink="http://www.w3.org/1999/xlink" width="200" height="200"><path d="M512 512m-512 0a512 512 0 1 0 1024 0 512 512 0 1 0-1024 0Z" fill="#333333" p-id="3481"></path><path d="M685.824 652.8c-0.512-1.536-0.768-2.816-1.28-4.352-10.24 0-20.736 0.512-30.976-0.256-6.656-0.256-15.872 3.584-18.688-4.608-2.304-6.656 5.888-10.752 10.24-15.36 23.04-23.552 47.104-46.336 68.864-70.912 24.832-27.904 21.248-61.696-7.424-84.992-9.472-7.936-19.456-15.104-29.184-23.04-114.432-91.648-222.208-190.72-332.288-287.488-19.2-16.896-26.112-14.592-33.792 9.728-22.528 70.656-0.512 141.056 59.648 189.184 41.472 33.28 87.552 59.392 134.912 83.2 5.888 3.072 13.056 4.864 17.408 11.264-8.192 4.096-13.312-1.28-18.944-3.584-66.56-28.672-130.56-62.208-188.416-106.496-4.864-3.84-9.984-9.472-17.152-5.12-5.888 3.584-5.12 9.984-5.376 15.872-2.56 64.256 39.68 125.952 101.888 148.48 28.928 10.496 58.88 16.128 89.088 20.992 4.352 0.768 9.984-0.768 11.008 6.4-8.448 5.12-17.152 2.048-25.6 1.28-37.632-3.328-74.24-11.776-110.08-24.064-4.864-1.792-10.496-4.352-14.592 0.768-4.096 4.864-2.048 9.984 0.256 14.848 2.816 5.888 5.632 11.776 9.216 17.152 28.928 41.472 68.352 63.232 119.04 65.024 19.968 0.768 21.504 3.072 11.776 19.968-9.728 16.896-19.456 33.536-29.44 50.176-6.912 11.264-3.584 16.128 9.216 15.872 9.472 0 18.944-0.256 28.16 0.512 17.408 1.024 18.944 4.096 10.24 18.944-20.736 34.816-41.984 69.632-62.72 104.448-3.072 5.12-7.936 9.728-6.656 19.712 85.504-61.696 168.704-122.624 251.648-183.552z" fill="#FFFFFF" p-id="3482"></path></svg>
                        </a>
                    </div>
                    <div>
                        <a href="#"
                           class="w-full flex items-center justify-center px-8 py-3 border border-gray-300 rounded-md shadow-sm text-sm font-medium text-gray-700 bg-white hover:bg-gray-50">
                            <svg t="1721900713839" class="h-5 w-5" viewBox="0 0 1024 1024" version="1.1" xmlns="http://www.w3.org/2000/svg" p-id="2505" xmlns:xlink="http://www.w3.org/1999/xlink" width="200" height="200"><path d="M686.976 332.8c10.88 0 21.632 0.832 32.256 2.048-28.992-135.104-173.44-235.52-338.304-235.52-184.32 0-335.296 125.632-335.296 285.184 0 92.096 50.24 167.68 134.208 226.368l-33.536 100.864 117.184-58.752c41.984 8.32 75.648 16.832 117.44 16.832 10.56 0 20.992-0.512 31.36-1.28a249.664 249.664 0 0 1-10.368-70.336c0-146.496 125.76-265.344 285.056-265.344zM506.688 241.92c25.28 0 41.984 16.64 41.984 41.856 0 25.152-16.704 41.984-41.984 41.984-25.088 0-50.368-16.832-50.368-41.984 0-25.216 25.28-41.856 50.368-41.856zM272 325.76c-25.088 0-50.432-16.832-50.432-41.984 0-25.216 25.344-41.856 50.432-41.856 25.152 0 41.856 16.64 41.856 41.856 0 25.152-16.64 41.984-41.856 41.984z" fill="#000000" p-id="2506"></path><path d="M993.024 594.176c0-134.08-134.144-243.328-284.8-243.328-159.552 0-285.184 109.248-285.184 243.328 0 134.272 125.632 243.328 285.184 243.328 33.344 0 67.072-8.384 100.608-16.832l91.968 50.368-25.216-83.776c67.328-50.56 117.44-117.44 117.44-193.088zM615.68 552.32c-16.64 0-33.536-16.64-33.536-33.6 0-16.64 16.832-33.536 33.536-33.536 25.344 0 41.984 16.832 41.984 33.536 0 16.96-16.64 33.6-41.984 33.6z m184.448 0c-16.64 0-33.28-16.64-33.28-33.6 0-16.64 16.64-33.536 33.28-33.536 25.152 0 41.92 16.832 41.92 33.536 0 16.96-16.768 33.6-41.92 33.6z" fill="#000000" p-id="2507"></path></svg>
                        </a>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<!-- Include all compiled plugins (below), or include individual files as needed -->
<script src="{{cdnjs "/static/bootstrap/js/bootstrap.min.js"}}" type="text/javascript"></script>
<script src="{{cdnjs "/static/layer/layer.js"}}" type="text/javascript"></script>

<script type="text/javascript">
    $(document).ready(function () {
        $("#account,#password,#code").on('focus', function () {
            $(this).tooltip('destroy').parents('.form-group').removeClass('has-error');
        });

        $(document).keydown(function (e) {
            var event = document.all ? window.event : e;
            if (event.keyCode === 13) {
                $("#btn-login").click();
            }
        });

        $(".icon").on('click', function (){
           if ($(this).hasClass("icon-disable")) {
               return;
           }
           window.location.href = $(this).data("url");
        })

        $("#btn-login").on('click', function () {
            $(this).tooltip('destroy').parents('.form-group').removeClass('has-error');
            var $btn = $(this).button('loading');

            var account = $.trim($("#account").val());
            var password = $.trim($("#password").val());
            var code = $("#code").val();

            if (account === "") {
                $("#account").tooltip({ placement: "auto", title: "{{i18n .Lang "message.account_empty"}}", trigger: 'manual' })
                    .tooltip('show')
                    .parents('.form-group').addClass('has-error');
                $btn.button('reset');
                return false;
            } else if (password === "") {
                $("#password").tooltip({ title: '{{i18n .Lang "message.password_empty"}}', trigger: 'manual' })
                    .tooltip('show')
                    .parents('.form-group').addClass('has-error');
                $btn.button('reset');
                return false;
            } else if (code !== undefined && code === "") {
                $("#code").tooltip({ title: '{{i18n .Lang "message.captcha_empty"}}', trigger: 'manual' })
                    .tooltip('show')
                    .parents('.form-group').addClass('has-error');
                $btn.button('reset');
                return false;
            } else {
                $.ajax({
                    url: "{{urlfor "AccountController.Login" "url" .url}}",
                    data: $("form").serializeArray(),
                    dataType: "json",
                    type: "POST",
                    success: function (res) {
                        if (res.errcode !== 0) {
                            $("#captcha-img").click();
                            $("#code").val('');
                            layer.msg(res.message);
                            $btn.button('reset');
                        } else {
                            turl = res.data;
                            if (turl === "") {
                                turl = "/";
                            }
                            window.location = turl;
                        }
                    },
                    error: function () {
                        $("#captcha-img").click();
                        $("#code").val('');
                        layer.msg('{{i18n .Lang "message.system_error"}}');
                        $btn.button('reset');
                    }
                });
            }

            return false;
        });
    });
</script>
</body>
</html>