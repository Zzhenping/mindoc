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
<div class="min-h-screen bg-gray-100 flex flex-col justify-center py-12 sm:px-6 lg:px-8" id="registerApp">
    <div class="sm:mx-auto sm:w-full sm:max-w-md">
        <h2 class="mt-6 text-center text-3xl font-extrabold text-gray-900">
            {{i18n .Lang "common.new_account"}}
        </h2>
    </div>
    <div class="mt-8 sm:mx-auto sm:w-full sm:max-w-md">
        <div class="bg-white py-8 px-4 shadow sm:rounded-lg sm:px-10">
            <form class="space-y-6" @submit.prevent="handleSubmit" autocomplete="off">
                <div class="mt-1">
                    <input v-model="formData.account" @input="handleInputChange('account', $event.target.value)" autocomplete="off" id="account" name="account" required
                           class="appearance-none rounded-md relative block w-full px-3 py-2 border border-gray-300 placeholder-gray-500 text-gray-900 focus:outline-none focus:ring-indigo-500 focus:border-indigo-500 focus:z-10 sm:text-sm"
                           placeholder='{{i18n .Lang "common.username"}}'>
                </div>
                <div class="mt-1">
                    <input v-model="formData.password" @input="handleInputChange('password', $event.target.value)" id="password" name="password" type="password" autocomplete="off" required
                           class="appearance-none rounded-md relative block w-full px-3 py-2 border border-gray-300 placeholder-gray-500 text-gray-900 focus:outline-none focus:ring-indigo-500 focus:border-indigo-500 focus:z-10 sm:text-sm"
                           placeholder="{{i18n .Lang "common.password"}}">
                </div>
                <div class="mt-1">
                    <input v-model="formData.confirmPassword" @input="handleInputChange('confirmPassword', $event.target.value)" id="confirmPassword" name="confirmPassword" type="password" autocomplete="off" required
                           class="appearance-none rounded-md relative block w-full px-3 py-2 border border-gray-300 placeholder-gray-500 text-gray-900 focus:outline-none focus:ring-indigo-500 focus:border-indigo-500 focus:z-10 sm:text-sm"
                           placeholder="{{i18n .Lang "common.confirm_password"}}">
                </div>
                <div class="mt-1">
                    <input v-model="formData.email" @input="handleInputChange('email', $event.target.value)" autocomplete="off" id="email" name="email" required type="email"
                           class="appearance-none rounded-md relative block w-full px-3 py-2 border border-gray-300 placeholder-gray-500 text-gray-900 focus:outline-none focus:ring-indigo-500 focus:border-indigo-500 focus:z-10 sm:text-sm"
                           placeholder='{{i18n .Lang "common.email"}}'>
                </div>
                <div class="flex justify-between">
                    {{if .ENABLED_CAPTCHA }}
                    {{if ne .ENABLED_CAPTCHA "false"}}
                    <div class="input-group-addon">
                        <i class="fa fa-check-square"></i>
                    </div>
                    <input required v-model="formData.code" @input="handleInputChange('code', $event.target.value)" type="text" name="code" id="code" class="ppearance-none rounded-md relative block w-full px-3 py-2 border border-gray-300 placeholder-gray-500 text-gray-900 focus:outline-none focus:ring-indigo-500 focus:border-indigo-500 focus:z-10 sm:text-sm mr-3" maxlength="5" placeholder='{{i18n .Lang "common.captcha"}}' autocomplete="off" />
                    <img class="cursor-pointer" :src='captchaUri' @click="switchCaptcha"  title='{{i18n .Lang "message.click_to_change"}}'>
                    {{end}}
                    {{end}}
                </div>
                <div>
                    <button v-show="!loading" type="submit"
                            class="w-full flex justify-center py-2 px-4 border border-transparent text-sm font-medium rounded-md text-white bg-indigo-600 hover:bg-indigo-700 focus:outline-none focus:ring-2 focus:ring-offset-2 focus:ring-indigo-500">

                        Register
                    </button>

                    <a href="{{urlfor "AccountController.Login" }}"
                       class="w-full flex items-center justify-center py-2 px-4 border border-gray-300 rounded-md shadow-sm text-sm font-medium text-gray-700 mt-3 bg-white hover:bg-indigo-600 hover:text-white">
                        Sign in
                    </a>
                </div>
            </form>
        </div>
    </div>
</div>

<script src="{{cdnjs "/static/layer/layer.js"}}" type="text/javascript"></script>
<script src="{{cdnjs "/static/v3/js/vue.js"}}" type="text/javascript"></script>
<script>
    const { createApp, ref, watch } = Vue

    createApp({
        setup() {
            const formData = ref({
                account: "",
                password: "",
                confirmPassword: "",
                code: "",
                email: ""
            })

            const captchaUri = ref('{{urlfor "AccountController.Captcha"}}');

            const switchCaptcha = () => {
                captchaUri.value = '{{urlfor "AccountController.Captcha"}}?key=login&t='+(new Date()).getTime();
            }
            const handleInputChange = (key, value) => {
                formData.value[key] = value.trim();
            };
            const handleSubmit = () => {
                const params = new FormData();
                const realFormData = formData.value;

                if (realFormData.password !== realFormData.confirmPassword) {
                    layer.msg("123")
                    return
                }

                params.append('account', realFormData.account);
                params.append('password', realFormData.password);
                params.append('code', realFormData.code);
                if (realFormData.is_remember) {
                    params.append('is_remember', "yes");
                }
                fetch({{urlfor "AccountController.Login" "url" .url}}, {
                    method: 'POST',
                    body: params
                }).then(response => {
                    if (response.ok) {
                        return response.json();
                    } else {
                        layer.msg("123")
                        throw new Error('Network response was not ok');
                    }
                }).then(res => {
                    switchCaptcha()
                    if (res.errcode !== 0) {
                        switch (res.errcode) {
                            case 6001:
                                formData.value.code = ""
                                break;
                            default:
                                formData.value = [];
                        }
                        layer.msg(res.message, {icon: 0});
                    } else {
                        let turl = res.data;
                        if (turl === "") {
                            turl = "/";
                        }
                        window.location = turl;
                    }
                }).catch(error => {
                    layer.msg(error);
                });
            }

            return {
                handleSubmit,
                handleInputChange,
                switchCaptcha,
                captchaUri,
                formData
            }
        },
    }).mount('#registerApp')
</script>
</body>
</html>