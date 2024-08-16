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
            <div class="mx-auto mt-10 max-w-2xl lg:mx-0">
                <h2 class="text-3xl font-bold tracking-tight text-gray-900 sm:text-4xl">
                    {{i18n .Lang "project.prj_space_list"}}
                </h2>
            </div>
            <div class="mx-auto grid max-w-2xl grid-cols-1 gap-x-8 gap-y-16 border-t border-gray-200 mt-10 pt-10 lg:mx-0 lg:max-w-none lg:grid-cols-3">
                {{range $index,$item := .Lists}}
                <article class="flex max-w-xl flex-col items-start justify-between border rounded-lg">
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