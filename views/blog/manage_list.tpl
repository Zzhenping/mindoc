<!DOCTYPE html>
<html lang="zh-CN">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <title>{{i18n .Lang "common.my_blog"}} - Powered by MinDoc</title>
    <link rel="stylesheet" href="{{cdnjs "/static/v3/css/main.css"}}">
</head>
<body>
<div class="manual-reader">
    {{template "widgets/header.tpl" .}}

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
                        <a href="{{urlfor "BlogController.List" }}" class="ms-1 text-sm font-medium text-gray-700 hover:text-blue-600 md:ms-2 dark:text-gray-400 dark:hover:text-white">文章</a>
                    </div>
                </li>
                <li aria-current="page">
                    <div class="flex items-center">
                        <svg class="rtl:rotate-180 w-3 h-3 text-gray-400 mx-1" aria-hidden="true" xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 6 10">
                            <path stroke="currentColor" stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="m1 9 4-4-4-4"/>
                        </svg>
                        <span class="ms-1 text-sm font-medium text-gray-500 md:ms-2 dark:text-gray-400">我的文章</span>
                    </div>
                </li>
            </ol>

            <div class="inline-flex rounded-md shadow-sm mr-5" role="group">
                <button type="button" class="inline-flex items-center px-2 py-2 text-sm font-medium text-gray-900 bg-white border rounded-lg border-gray-200 hover:bg-gray-100 hover:text-blue-700 focus:z-10 focus:ring-2 focus:ring-blue-700 focus:text-blue-700 dark:bg-gray-800 dark:border-gray-700 dark:text-white dark:hover:text-white dark:hover:bg-gray-700 dark:focus:ring-blue-500 dark:focus:text-white">
                    <svg class="w-3 h-3 me-2" aria-hidden="true" xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 20 20">
                        <path stroke="currentColor" stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M4 12.25V1m0 11.25a2.25 2.25 0 0 0 0 4.5m0-4.5a2.25 2.25 0 0 1 0 4.5M4 19v-2.25m6-13.5V1m0 2.25a2.25 2.25 0 0 0 0 4.5m0-4.5a2.25 2.25 0 0 1 0 4.5M10 19V7.75m6 4.5V1m0 11.25a2.25 2.25 0 1 0 0 4.5 2.25 2.25 0 0 0 0-4.5ZM16 19v-2"/>
                    </svg>
                    {{i18n .Lang "blog.add_blog"}}
                </button>
            </div>
        </nav>

        <ul class="w-full mb-5">
            {{range $index,$item := .ModelList}}
            <li class="px-3 py-3 sm:pb-4 border-b rounded-sm border-solid border-gray-200 hover:bg-gray-200 transition-all">
                <a href="">
                    <p class="text-lg font-medium text-gray-900 truncate dark:text-white mb-2">
                        {{$item.BlogTitle}}
                    </p>
                    <p class="text-sm font-medium text-gray-900 truncate dark:text-white mb-2">
                        <span class="bg-blue-100 text-blue-800 text-xs font-medium me-2 px-2.5 py-0.5 rounded-full dark:bg-blue-900 dark:text-blue-300">Default</span>
                        <span class="bg-gray-100 text-gray-800 text-xs font-medium me-2 px-2.5 py-0.5 rounded-full dark:bg-gray-700 dark:text-gray-300">Dark</span>
                        <span class="bg-red-100 text-red-800 text-xs font-medium me-2 px-2.5 py-0.5 rounded-full dark:bg-red-900 dark:text-red-300">Red</span>
                    </p>
                    <p class="text-sm font-medium text-gray-500 truncate dark:text-white mb-2">
                        {{$item.BlogExcerpt}}
                    </p>
                    <div class="flex items-center relative">
                        <div class="flex items-center px-3 text-gray-500 border-r border-solid border-gray-300 text-xs">
                                <span class="me-1">
                                    <svg class="w-4 h-4 text-gray-500 dark:text-gray-400" viewBox="0 0 1024 1024" version="1.1" xmlns="http://www.w3.org/2000/svg" p-id="1528"><path d="M542.955013 103.800088l119.538536 242.210437 267.295766 38.84061c28.314883 4.114714 39.620369 38.910195 19.131733 58.881039L755.503896 632.267131l45.659923 266.215154c4.837168 28.200272-24.761963 49.705052-50.087769 36.390815L511.998977 809.18347 272.922926 934.8731c-25.324782 13.314237-54.923914-8.190543-50.087768-36.390815l45.659922-266.215154L75.077929 443.732174c-20.488637-19.971867-9.18315-54.767348 19.131733-58.881039l267.295765-38.84061L481.043964 103.800088c12.662391-25.657356 49.248657-25.657356 61.911049 0z" fill="#4285F4" p-id="1529"></path></svg>
                                </span>
                            156
                        </div>

                        <div class="flex items-center px-3 text-gray-500 border-r border-solid border-gray-300 text-xs">
                                <span class="me-1">
                                    <svg class="w-4 h-4 text-gray-500 dark:text-gray-400" viewBox="0 0 1024 1024" version="1.1" xmlns="http://www.w3.org/2000/svg" p-id="3420"><path d="M960.5 487.4c0-47-38.1-85.1-85.1-85.1H661.5c18.6-59.1 50.9-193.8-32.1-283.7-55.6-60.2-107.7 8.1-107.7 8.1S578.4 369.9 341 477.5v402.8h449.9c47 0 85.1-38.1 85.1-85.1v-7.1c26.9-14.3 45.2-42.6 45.2-75.2V705c0-9.3-1.5-18.2-4.2-26.5 20.2-15.6 33.2-40 33.2-67.4v-7.9c0-17.6-5.4-34-14.6-47.6 15.4-15.4 25-36.7 25-60.2v-8z" fill="#E5ECFF" p-id="3421"></path><path d="M370.2 928.5H95.5C79.8 928.5 67 915.7 67 900V424.3c0-15.7 12.8-28.5 28.5-28.5h274.7c15.7 0 28.5 12.8 28.5 28.5V900c0 15.7-12.8 28.5-28.5 28.5z" fill="#5B79FB" p-id="3422"></path><path d="M960.5 487.4c0-47-38.1-85.1-85.1-85.1h-83c1.3 13.9 2 28 2 42.3 0 208.8-141.8 384.4-334.3 435.8h330.8c47 0 85.1-38.1 85.1-85.1v-7.1c26.9-14.3 45.2-42.6 45.2-75.2v-7.9c0-9.3-1.5-18.2-4.2-26.5 20.2-15.6 33.2-40 33.2-67.4v-7.9c0-17.6-5.4-34-14.6-47.6 15.4-15.4 25-36.7 25-60.2v-8.1z" fill="#C7D8FF" p-id="3423"></path><path d="M349.1 823.8c0 25.6-20.7 46.3-46.3 46.3s-46.3-20.7-46.3-46.3c0-25.6 20.7-46.3 46.3-46.3s46.3 20.7 46.3 46.3z" fill="#FFFFFF" p-id="3424"></path><path d="M850 86.9c-3.6-10.5-9.5-10.5-13 0l-20.1 59.3c-3.6 10.5-15.1 22-25.6 25.6l-58.9 20c-10.5 3.6-10.5 9.5 0 13.1l58.5 20.4c10.5 3.6 22 15.2 25.6 25.7l20.4 59.4c3.6 10.5 9.5 10.5 13 0l19.9-59.1c3.5-10.5 15-22.1 25.5-25.7l59.8-20.5c10.5-3.6 10.5-9.4 0-13l-58.8-19.9c-10.5-3.6-22.1-15-25.7-25.5L850 86.9z" fill="#FF7E71" p-id="3425"></path></svg>
                                </span>
                            156
                        </div>

                        <div class="flex items-center text-gray-500 px-3 text-xs">
                                <span class="me-1">
                                    <svg class="w-4 h-4 text-gray-500 dark:text-gray-400" viewBox="0 0 1024 1024" version="1.1" xmlns="http://www.w3.org/2000/svg" p-id="15680"><path d="M422.4 9.92C192 9.92 2.24 174.72 2.24 377.92a352 352 0 0 0 157.44 288v185.92l184.32-111.68a460.48 460.48 0 0 0 78.4 6.72c232.32 0 420.48-164.8 420.48-368S654.4 9.92 422.4 9.92zM212.48 430.4a52.48 52.48 0 1 1 52.48-52.48 52.48 52.48 0 0 1-52.48 52.48z m209.92 0a52.48 52.48 0 1 1 52.48-52.48 52.16 52.16 0 0 1-52.48 52.48z m209.92 0a52.48 52.48 0 1 1 52.8-52.48 52.48 52.48 0 0 1-52.8 52.48z" fill="#2C7DFA" p-id="15681"></path><path d="M896 323.84l1.6 26.24v45.44c0 240.96-190.08 408.32-453.76 408.32h-90.24a368.32 368.32 0 0 0 272.32 113.28 421.44 421.44 0 0 0 72.32-6.08l169.6 104.64v-171.84a329.28 329.28 0 0 0 151.36-270.72A323.84 323.84 0 0 0 896 323.84z" fill="#2C7DFA" p-id="15682"></path></svg>
                                </span>
                            156
                        </div>

                        <div class="absolute right-0 text-gray-500 text-xs">
                            {{i18n $.Lang "blog.update_time"}}：{{date_format  $item.Modified "2006-01-02 15:04:05"}}
                        </div>
                    </div>
                </a>
            </li>
            {{else}}

            {{end}}
        </ul>

        <nav aria-label="Page navigation example">
            <ul class="flex items-center -space-x-px h-10 text-base">
                <li>
                    <a href="#" class="flex items-center justify-center px-4 h-10 ms-0 leading-tight text-gray-500 bg-white border border-e-0 border-gray-300 rounded-s-lg hover:bg-gray-100 hover:text-gray-700 dark:bg-gray-800 dark:border-gray-700 dark:text-gray-400 dark:hover:bg-gray-700 dark:hover:text-white">
                        <span class="sr-only">Previous</span>
                        <svg class="w-3 h-3 rtl:rotate-180" aria-hidden="true" xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 6 10">
                            <path stroke="currentColor" stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M5 1 1 5l4 4"/>
                        </svg>
                    </a>
                </li>
                <li>
                    <a href="#" class="flex items-center justify-center px-4 h-10 leading-tight text-gray-500 bg-white border border-gray-300 hover:bg-gray-100 hover:text-gray-700 dark:bg-gray-800 dark:border-gray-700 dark:text-gray-400 dark:hover:bg-gray-700 dark:hover:text-white">1</a>
                </li>
                <li>
                    <a href="#" class="flex items-center justify-center px-4 h-10 leading-tight text-gray-500 bg-white border border-gray-300 hover:bg-gray-100 hover:text-gray-700 dark:bg-gray-800 dark:border-gray-700 dark:text-gray-400 dark:hover:bg-gray-700 dark:hover:text-white">2</a>
                </li>
                <li>
                    <a href="#" aria-current="page" class="z-10 flex items-center justify-center px-4 h-10 leading-tight text-blue-600 border border-blue-300 bg-blue-50 hover:bg-blue-100 hover:text-blue-700 dark:border-gray-700 dark:bg-gray-700 dark:text-white">3</a>
                </li>
                <li>
                    <a href="#" class="flex items-center justify-center px-4 h-10 leading-tight text-gray-500 bg-white border border-gray-300 hover:bg-gray-100 hover:text-gray-700 dark:bg-gray-800 dark:border-gray-700 dark:text-gray-400 dark:hover:bg-gray-700 dark:hover:text-white">4</a>
                </li>
                <li>
                    <a href="#" class="flex items-center justify-center px-4 h-10 leading-tight text-gray-500 bg-white border border-gray-300 hover:bg-gray-100 hover:text-gray-700 dark:bg-gray-800 dark:border-gray-700 dark:text-gray-400 dark:hover:bg-gray-700 dark:hover:text-white">5</a>
                </li>
                <li>
                    <a href="#" class="flex items-center justify-center px-4 h-10 leading-tight text-gray-500 bg-white border border-gray-300 rounded-e-lg hover:bg-gray-100 hover:text-gray-700 dark:bg-gray-800 dark:border-gray-700 dark:text-gray-400 dark:hover:bg-gray-700 dark:hover:text-white">
                        <span class="sr-only">Next</span>
                        <svg class="w-3 h-3 rtl:rotate-180" aria-hidden="true" xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 6 10">
                            <path stroke="currentColor" stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="m1 9 4-4-4-4"/>
                        </svg>
                    </a>
                </li>
            </ul>
        </nav>

    </div>

    <script src="{{cdnjs "/static/v3/flowbite/flowbite.min.js"}}" type="text/javascript"></script>
</div>
</body>
</html>
