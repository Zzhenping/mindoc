<!DOCTYPE html>
<html lang="zh-CN">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <title>{{i18n .Lang "project.prj_space_list"}} - Powered by MinDoc</title>
    <meta name="keywords"
          content="MinDoc,文档在线管理系统,WIKI,wiki,wiki在线,文档在线管理,接口文档在线管理,接口文档管理">
    <meta name="description" content="MinDoc文档在线管理系统 {{.site_description}}">
    <meta name="author" content="Minho"/>
    <meta name="site" content="https://www.iminho.me"/>
    <!-- Bootstrap -->
    <link rel="stylesheet" href="{{cdnjs "/static/v3/css/main.css"}}">

</head>
<body>
<div class="manual-reader manual-container manual-search-reader">
    {{template "widgets/header.tpl" .}}

    <div class="bg-white ">
        <div class="max-w-screen-xl mx-auto my-4">
            <nav class="flex justify-between mb-1 py-3 text-gray-700 border border-gray-200 rounded-lg bg-gray-50 dark:bg-gray-800 dark:border-gray-700" aria-label="Breadcrumb">
                <ol class="ml-3 inline-flex items-center space-x-1 md:space-x-2 rtl:space-x-reverse">
                    <li class="inline-flex items-center">
                        <a href="{{urlfor "HomeController.Index" }}" class="inline-flex items-center text-sm font-medium text-gray-700 hover:text-blue-600 dark:text-gray-400 dark:hover:text-white">
                            <svg class="w-3 h-3 me-2.5" aria-hidden="true" xmlns="http://www.w3.org/2000/svg" fill="currentColor" viewBox="0 0 20 20">
                                <path d="m19.707 9.293-2-2-7-7a1 1 0 0 0-1.414 0l-7 7-2 2a1 1 0 0 0 1.414 1.414L2 10.414V18a2 2 0 0 0 2 2h3a1 1 0 0 0 1-1v-4a1 1 0 0 1 1-1h2a1 1 0 0 1 1 1v4a1 1 0 0 0 1 1h3a2 2 0 0 0 2-2v-7.586l.293.293a1 1 0 0 0 1.414-1.414Z"/>
                            </svg>
                            {{i18n .Lang "common.home"}}
                        </a>
                    </li>
                    <li>
                        <div class="flex items-center">
                            <svg class="rtl:rotate-180 w-3 h-3 text-gray-400 mx-1" aria-hidden="true" xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 6 10">
                                <path stroke="currentColor" stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="m1 9 4-4-4-4"/>
                            </svg>
                            <a href="{{urlfor "ItemsetsController.Index" }}" class="ms-1 text-sm font-medium text-gray-700 hover:text-blue-600 md:ms-2 dark:text-gray-400 dark:hover:text-white">{{i18n .Lang "project.prj_space_list"}}</a>
                        </div>
                    </li>
                </ol>
            </nav>
            <div class="mx-auto grid max-w-2xl grid-cols-1 gap-x-8 gap-y-16 pt-5 lg:mx-0 lg:max-w-none lg:grid-cols-3">
                {{range $index,$item := .Lists}}
                <article class="flex max-w-xl flex-col items-start justify-between border rounded-lg hover:shadow-lg transition transition-all">
                    <a href="{{urlfor "ItemsetsController.List" ":key" $item.ItemKey}}" class="mx-auto px-8 py-8">
                        <div class="flex items-center gap-x-4 text-xs">
                            <time datetime="2020-03-16" class="text-gray-500">{{$item.CreateTimeString}}</time>
                            <span class="relative z-10 rounded-full bg-gray-50 px-3 py-1.5 font-medium text-gray-600 hover:bg-gray-100">{{$item.CreateName}}</span>
                            <time datetime="2020-03-16" class="text-gray-500">{{i18n $.Lang "project.prj_amount"}}
                                ：{{$item.BookNumber}}</time>
                        </div>
                        <div class="group relative">
                            <h3 class="mt-3 text-lg font-semibold leading-6 text-gray-900 group-hover:text-gray-600">
                                <span class="absolute inset-0"></span>
                                {{$item.ItemName}}
                            </h3>
                        </div>
                    </a>
                </article>
                {{else}}

                {{end}}
                <!-- More posts... -->
            </div>
        </div>
    </div>
</div>
<script src="{{cdnjs "/static/jquery/1.12.4/jquery.min.js"}}" type="text/javascript"></script>
<script src="{{cdnjs "/static/bootstrap/js/bootstrap.min.js"}}" type="text/javascript"></script>
{{.Scripts}}
</body>
</html>