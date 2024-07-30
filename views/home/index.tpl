<!DOCTYPE html>
<html lang="zh-CN">
<head>
    <title>{{.SITE_NAME}} - Powered by MinDoc</title>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="renderer" content="webkit">
    <meta name="author" content="Minho" />
    <meta name="site" content="https://www.iminho.me" />
    <meta name="keywords" content="MinDoc,文档在线管理系统,WIKI,wiki,wiki在线,文档在线管理,接口文档在线管理,接口文档管理">
    <meta name="description" content="MinDoc文档在线管理系统 {{.site_description}}">
    <link rel="stylesheet" href="{{cdnjs "/static/v3/css/main.css"}}">
    <script type="text/javascript">
        window.updateBookOrder = "{{urlfor "BookController.UpdateBookOrder"}}";
    </script>
</head>
<body>
<div class="manual-reader manual-container">
    {{template "widgets/header.tpl" .}}
    <div class="max-w-screen-xl mx-auto my-4 grid grid-cols-4 gap-4">
        {{range $index,$item := .Lists}}
        <div class="w-full max-w-sm bg-white border border-gray-200 rounded-lg shadow dark:bg-gray-800 dark:border-gray-700 cursor-pointer hover:shadow-lg transition transition-all">
            <div class="flex justify-between items-center px-2 pt-2">
                <a href="{{urlfor "DocumentController.Index" ":key" $item.Identify}}">
                    <span class="flex justify-center items-center border rounded-full px-2 mr-2 text-center text-sm text-gray-500">
                    {{$item.DocCount}} 篇</span>
                </a>
                <button id="dropdownButton-{{$index}}" data-dropdown-toggle="dropdown-{{$index}}" class="inline-block text-gray-500 dark:text-gray-400 hover:bg-gray-100 dark:hover:bg-gray-700 focus:ring-2 focus:outline-none focus:ring-gray-200 dark:focus:ring-gray-700 rounded-lg text-sm p-1.5" type="button">
                    <svg class="w-5 h-5" aria-hidden="true" xmlns="http://www.w3.org/2000/svg" fill="currentColor" viewBox="0 0 16 3">
                        <path d="M2 0a1.5 1.5 0 1 1 0 3 1.5 1.5 0 0 1 0-3Zm6.041 0a1.5 1.5 0 1 1 0 3 1.5 1.5 0 0 1 0-3ZM14 0a1.5 1.5 0 1 1 0 3 1.5 1.5 0 0 1 0-3Z"/>
                    </svg>
                </button>
                <!-- Dropdown menu -->
                <div id="dropdown-{{$index}}" class="z-10 hidden text-base list-none bg-white divide-y divide-gray-100 rounded-lg shadow w-44 dark:bg-gray-700">
                    <ul class="py-2 border" aria-labelledby="dropdownButton-{{$index}}">
                        <li>
                            <a href="#" class="block px-4 py-2 text-sm text-gray-700 hover:bg-gray-100 dark:hover:bg-gray-600 dark:text-gray-200 dark:hover:text-white lg:hover:text-primary-700">设置</a>
                        </li>
                        <li>
                            <a href="#" class="block px-4 py-2 text-sm text-gray-700 hover:bg-gray-100 dark:hover:bg-gray-600 dark:text-gray-200 dark:hover:text-white lg:hover:text-primary-700">复制</a>
                        </li>
                        <li>
                            <a href="#" class="block px-4 py-2 text-sm text-red-600 hover:bg-gray-100 dark:hover:bg-gray-600 dark:text-gray-200 dark:hover:text-white">删除</a>
                        </li>
                    </ul>
                </div>
            </div>
            <a href="{{urlfor "DocumentController.Index" ":key" $item.Identify}}">
                <div class="group flex flex-col items-center pb-8 transition transition-all">
                    <div class="flex justify-center items-center w-24 h-24 mb-3 rounded-full shadow-lg border">
                        {{if eq $item.Editor "markdown"}}
                        <svg class="w-14 h-14 rounded-full" viewBox="0 0 1024 1024" version="1.1" xmlns="http://www.w3.org/2000/svg" p-id="25211" width="200" height="200"><path d="M854.6 288.7c6 6 9.4 14.1 9.4 22.6V928c0 17.7-14.3 32-32 32H192c-17.7 0-32-14.3-32-32V96c0-17.7 14.3-32 32-32h424.7c8.5 0 16.7 3.4 22.7 9.4l215.2 215.3zM790.2 326L602 137.8V326h188.2zM426.13 600.93l59.11 132.975a16.003 16.003 0 0 0 14.624 9.503h24.055c6.33 0 12.065-3.732 14.63-9.518l59.109-133.35v157.458c0 8.838 7.165 16.003 16.003 16.003h27.337c8.838 0 16.003-7.165 16.003-16.003V486.002c0-8.838-7.165-16.003-16.003-16.003h-34.746a16.003 16.003 0 0 0-14.673 9.616l-79.473 182.587-79.473-182.587A16.003 16.003 0 0 0 417.96 470h-34.958c-8.838 0-16.003 7.165-16.003 16.003v271.996c0 8.838 7.165 16.003 16.003 16.003h27.126c8.838 0 16.003-7.165 16.003-16.003v-157.07z" fill="#fec516" p-id="25212"></path></svg>
                        {{else if eq $item.Editor "cherry_markdown"}}
                        <svg class="w-14 h-14 rounded-full" viewBox="0 0 1024 1024" version="1.1" xmlns="http://www.w3.org/2000/svg" p-id="74247" width="200" height="200"><path d="M653.88544 0a92.16 92.16 0 0 1 65.09568 26.9312l187.61728 187.21792a92.16 92.16 0 0 1 27.05408 65.2288v120.6272A80.10752 80.10752 0 0 1 1013.76 480.09216v319.7952a80.10752 80.10752 0 0 1-77.55776 80.06656l-2.54976 0.03072v48.00512c0 53.02272-43.02848 96-96.12288 96H196.7104c-53.0944 0-96.12288-42.97728-96.12288-96v-48.00512A80.10752 80.10752 0 0 1 20.48 799.8976v-319.7952a80.10752 80.10752 0 0 1 77.55776-80.06656l2.54976-0.04096V96C100.58752 42.97728 143.616 0 196.7104 0h457.17504zM837.5296 879.99488H196.7104v17.28512a30.72 30.72 0 0 0 30.72 30.72h579.3792a30.72 30.72 0 0 0 30.72-30.72v-17.28512zM355.49184 555.78624c-16.42496 0-30.6176 2.23232-42.57792 6.69696-11.97056 4.4544-22.6304 11.53024-32.01024 21.1968-7.80288 8.02816-13.89568 17.70496-18.2784 29.0304a96.64512 96.64512 0 0 0-6.58432 35.21536c0 23.552 7.03488 41.96352 21.0944 55.23456 14.05952 13.27104 33.65888 19.9168 58.7776 19.9168 6.90176 0 13.98784-0.512 21.26848-1.52576a216.2688 216.2688 0 0 0 22.60992-4.44416l4.0448-36.89472a99.61472 99.61472 0 0 1-19.4048 7.424 74.5472 74.5472 0 0 1-18.8416 2.47808c-14.0288 0-25.11872-3.69664-33.30048-11.08992-8.17152-7.38304-12.25728-17.37728-12.25728-29.97248 0-19.3536 5.39648-34.48832 16.19968-45.39392 10.79296-10.91584 25.83552-16.37376 45.1072-16.37376a75.776 75.776 0 0 1 20.19328 2.59072 66.8672 66.8672 0 0 1 17.83808 7.87456l10.56768-32.512a208.72192 208.72192 0 0 0-28.11904-7.08608 152.59648 152.59648 0 0 0-26.32704-2.36544z m120.59648 3.70688h-43.53024L398.6944 719.36h43.53024l14.29504-67.72736h49.72544L491.7248 719.36h43.76576l33.86368-159.86688h-43.54048l-12.93312 60.07808h-49.50016l12.70784-60.07808z m189.56288 0h-66.2528l-34.2016 159.86688h39.26016l20.24448-93.82912c0.37888-1.72032 1.16736-5.98016 2.3552-12.76928l0.96256-5.4272 1.0752-6.08256 2.46784-14.19264h1.91488l5.7344 132.3008h39.38304l62.208-132.3008h1.35168a914.97472 914.97472 0 0 0-4.89472 18.90304 366.3872 366.3872 0 0 0-3.76832 16.87552l-20.14208 96.52224h39.49568l34.52928-159.86688H718.6432l-37.0176 80.55808a346.624 346.624 0 0 0-7.58784 17.48992c-2.14016 5.36576-3.92192 10.4448-5.34528 15.24736 0.22528-3.97312 0.38912-7.5776 0.512-10.8032 0.1024-3.2256 0.16384-6.07232 0.16384-8.5504 0-2.92864-0.02048-5.34528-0.06144-7.26016a229.376 229.376 0 0 0-0.16384-5.44768l-3.4816-81.23392zM608.33792 88.32H227.4304a30.72 30.72 0 0 0-30.72 30.72v280.95488h640.8192v-81.5616H700.52864c-50.8928-0.01024-92.14976-41.2672-92.16-92.16l-0.03072-137.95328z m96.12288 59.84256v58.91072a15.36 15.36 0 0 0 15.36 15.36h59.0848l-74.4448-74.27072z" fill="#f14f9a" p-id="74248"></path></svg>
                        {{else if eq $item.Editor "html"}}
                        <svg class="w-14 h-14 rounded-full" viewBox="0 0 1024 1024" version="1.1" xmlns="http://www.w3.org/2000/svg" p-id="60418" width="200" height="200"><path d="M844.288 316.928l-215.04-215.04L281.6 102.4c-56.32 0-102.4 46.08-102.4 102.4v614.4c0 56.32 46.08 102.4 102.4 102.4h460.8c56.32 0 102.4-46.08 102.4-102.4l-0.512-502.272zM312.32 547.328l117.76-62.976v42.496l-74.24 38.4L430.08 604.16v41.984l-117.76-63.488v-35.328zM425.984 686.08l135.168-235.52h34.304l-135.68 235.52h-33.792z m290.816-102.912l-122.88 62.976v-42.496l74.24-38.4-74.24-38.912v-41.984l122.88 62.976v35.84z" fill="#00c0b3" p-id="60419"></path><path d="M842.752 316.928l-215.04-215.04v163.84c0 28.16 23.04 51.2 51.2 51.2h163.84z" fill="#00c0b3" p-id="60420"></path></svg>
                        {{else}}
                        <svg class="w-14 h-14 rounded-full" viewBox="0 0 1024 1024" version="1.1" xmlns="http://www.w3.org/2000/svg" p-id="52473" width="200" height="200"><path d="M145 96l66 746.6L511.8 928l299.6-85.4L878.7 96H145z m610.9 700.6l-244.1 69.6-245.2-69.6-56.7-641.2h603.8l-57.8 641.2zM281 249l1.7 24.3 22.7 253.5h206.5v-0.1h112.9l-11.4 118.5L511 672.9v0.2h-0.8l-102.4-27.7-6.5-73.2h-91l11.3 144.7 188.6 52h1.7v-0.4l187.7-51.7 1.7-16.3 21.2-242.2 3.2-24.3H511v0.2H389.9l-8.2-94.2h352.1l1.7-19.5 4.8-47.2L742 249H511z" fill="#0076cd" p-id="52474"></path></svg>
                        {{end}}

                    </div>
                    <h5 class="text-center w-full mb-1 text-xl font-medium text-gray-600 dark:text-white break-words line-clamp-2 px-5 group-hover:text-gray-900">{{$item.BookName}}</h5>
                    <span class="text-sm text-gray-500 dark:text-gray-400">{{i18n $.Lang "blog.author"}} - {{if eq $item.RealName "" }}{{$item.CreateName}}{{else}}{{$item.RealName}}{{end}}</span>
                    <p class="w-full break-words line-clamp-2 text-sm text-gray-500 dark:text-gray-400 px-5">{{$item.Description}}</p>
                </div>
            </a>
        </div>
        {{else}}
        123123
        {{end}}
    </div>
</div>
<script src="{{cdnjs "/static/v3/flowbite/flowbite.min.js"}}" type="text/javascript"></script>
{{.Scripts}}
</body>
</html>