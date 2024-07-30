<header class="shadow">
    <nav class="bg-white border-gray-200 px-4 lg:px-6 py-2.5 dark:bg-gray-800">
        <div class="flex flex-wrap justify-between items-center mx-auto max-w-screen-xl">
            <a href="/" class="flex items-center">
                <span class="self-center text-xl font-semibold whitespace-nowrap dark:text-white">
                    {{if .SITE_TITLE}}
                    {{.SITE_TITLE}}
                    {{else}}
                    {{.SITE_NAME}}
                    {{end}}
                </span>
            </a>
            <div class="flex items-center lg:order-2">
                <svg class="w-8 h-8 me-2 cursor-pointer" viewBox="0 0 1024 1024" version="1.1" xmlns="http://www.w3.org/2000/svg">
                    <path d="M726.63 361.21h-62.1c-14.27 0-28.18 1.49-41.75 3.95v-53.1c0-136.19-110.4-246.6-246.6-246.6h-65.61C174.4 65.46 64 175.85 64 312.04v65.59c0 79.84 38.46 154.33 103.24 200.66l69.8 112.68c8.47 13.68 28.97 11.63 34.57-3.45l23.7-63.81c5.17 0.31 10.29 0.5 15.28 0.5h65.61c18.91 0 37.25-2.33 54.94-6.36v38.81c0 128.68 104.69 233.37 233.37 233.37h62.1c4.73 0 9.57-0.18 14.46-0.47l15.97 42.59c5.92 15.79 21.23 26.4 38.09 26.4l0.64-0.01c17.15-0.25 32.39-11.36 37.9-27.59l28.62-84.37C923.6 802.72 960 732.22 960 656.66v-62.08c0-128.68-104.7-233.37-233.37-233.37z m-421.76 66.38H187.05V240.93H301.1v35.5h-73.17v38.45h67.8v34.18h-67.8v43.01h76.94v35.52z m73.7-142.02v142.02h-40.35V240.93h62.41l58.64 133.41h1.61V240.93h40.08V427.6h-56.21l-64.56-142.02h-1.62z m542.87 371.1c0 64.95-32.21 125.38-86.14 161.72l-5.4 3.63-32.75 96.54c-0.27 0.84-1.09 1.42-1.94 1.46l-0.08 19.26v-19.26c-0.9 0-1.7-0.58-2.02-1.4l-26.5-70.7-15.12 1.93c-8.53 1.11-16.91 1.65-24.87 1.65h-62.1c-107.43 0-194.83-87.4-194.83-194.83v-50.92c39.51-16.21 73.78-42.4 99.89-75.41v151.88H678.1v92.58h43.47v-92.58h106.19v-152H721.57v-52.45l-43.47-1.65v54.1H569.66c27.84-35.25 46.32-78.19 51.52-125.21 13.99-3.2 28.39-5.25 43.34-5.25h62.1c107.42 0 194.82 87.39 194.82 194.82v62.09z m-307.72-16.29v-68.03h64.38v68.03h-64.38z m107.85 0v-68.03h62.39v68.03h-62.39z"></path>
                    <path class="group-hover:fill-current group-hover:#040000" d="M740.38 182.07v55.98l-22.64-22.66-26.4 26.4 56.22 56.26c3.65 3.65 8.42 5.47 13.2 5.47 4.78 0 9.55-1.82 13.2-5.47l52.83-52.79-26.4-26.4-22.68 22.66v-59.44c0-30.88-25.12-56-56-56h-63.29v37.33h63.29c10.29 0 18.67 8.38 18.67 18.66zM320.93 844.85v-56.02l22.68 22.66 26.4-26.4-56.26-56.22c-7.29-7.29-19.1-7.29-26.4 0l-52.79 52.79 26.4 26.4 22.64-22.64v59.43c0 30.88 25.12 56 56 56h63.33v-37.33H339.6c-10.28 0-18.67-8.39-18.67-18.67z"></path>
                </svg>

                <a href="https://github.com/mindoc-org/mindoc" target="_blank" class="group transition transition-all">
                    <svg class="w-8 h-8 me-1 cursor-pointer" viewBox="0 0 1024 1024" version="1.1" xmlns="http://www.w3.org/2000/svg" p-id="87847">
                        <path class="group-hover:fill-current group-hover:#040000" d="M512 42.666667A464.64 464.64 0 0 0 42.666667 502.186667 460.373333 460.373333 0 0 0 363.52 938.666667c23.466667 4.266667 32-9.813333 32-22.186667v-78.08c-130.56 27.733333-158.293333-61.44-158.293333-61.44a122.026667 122.026667 0 0 0-52.053334-67.413333c-42.666667-28.16 3.413333-27.733333 3.413334-27.733334a98.56 98.56 0 0 1 71.68 47.36 101.12 101.12 0 0 0 136.533333 37.973334 99.413333 99.413333 0 0 1 29.866667-61.44c-104.106667-11.52-213.333333-50.773333-213.333334-226.986667a177.066667 177.066667 0 0 1 47.36-124.16 161.28 161.28 0 0 1 4.693334-121.173333s39.68-12.373333 128 46.933333a455.68 455.68 0 0 1 234.666666 0c89.6-59.306667 128-46.933333 128-46.933333a161.28 161.28 0 0 1 4.693334 121.173333A177.066667 177.066667 0 0 1 810.666667 477.866667c0 176.64-110.08 215.466667-213.333334 226.986666a106.666667 106.666667 0 0 1 32 85.333334v125.866666c0 14.933333 8.533333 26.88 32 22.186667A460.8 460.8 0 0 0 981.333333 502.186667 464.64 464.64 0 0 0 512 42.666667" fill="#231F20"></path>
                    </svg>
                </a>
                <button id="dropdownDividerButton" data-dropdown-toggle="dropdownDivider" class="block bg-white font-medium rounded-lg text-sm px-1 py-1 text-center inline-flex items-center hover:bg-gray-100 transition transition-all" type="button">
                    <img class="w-8 h-8 me-2 ml-2 rounded-full" src="{{cdnimg .Member.Avatar}}" alt="Jese image">
                    <div class="w-35 px-2 text-left text-sm text-gray-700">
                        {{.Member.Account}}
                    </div>
                    <svg class="w-2.5 h-2.5 ms-3 me-2" aria-hidden="true" xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 10 6">
                        <path stroke="currentColor" stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="m1 1 4 4 4-4"/>
                    </svg>
                </button>

                <!-- Dropdown menu -->
                <div id="dropdownDivider" class="z-10 bg-white border hidden divide-y divide-gray-100 rounded-lg shadow w-44 dark:bg-gray-700 dark:divide-gray-600">
                    <ul class="py-2 text-sm text-gray-700" aria-labelledby="dropdownDividerButton">
                        <li>
                            <span class="group flex items-center block px-4 py-2 hover:bg-gray-100 dark:hover:bg-gray-600 dark:hover:text-white lg:hover:text-primary-700">
                                <svg class="w-4 h-4 me-2" viewBox="0 0 1024 1024" version="1.1" xmlns="http://www.w3.org/2000/svg" p-id="10512" width="200" height="200">
                                    <path class="group-hover:fill-current group-hover:text-primary-700" d="M576 597.333333v-21.333333c0-11.733333-9.6-21.333333-21.333333-21.333333h-85.333334c-11.733333 0-21.333333 9.6-21.333333 21.333333v21.333333c0 11.733333 9.6 21.333333 21.333333 21.333334h12.8l-33.28 124.16c-0.426667 2.346667 0 4.906667 1.493334 6.826666l51.413333 68.693334a12.8 12.8 0 0 0 20.48 0l51.413333-68.693334c1.493333-1.92 1.92-4.48 1.493334-6.826666L541.866667 618.666667h12.8c11.733333 0 21.333333-9.6 21.333333-21.333334zM512 533.333333c-105.6 0-192-86.4-192-192v-85.333333c0-105.6 86.4-192 192-192s192 86.4 192 192v85.333333c0 105.6-86.4 192-192 192z" p-id="10513" fill="#696969"></path>
                                    <path class="group-hover:fill-current group-hover:text-primary-700" d="M773.12 576l-48.64-10.666667c-8.96-1.92-18.346667 2.133333-22.826667 10.24l-176.426666 315.946667c-5.76 10.24-20.693333 10.24-26.453334 0l-181.12-324.266667a20.757333 20.757333 0 0 0-22.826666-10.24L208.213333 576A127.914667 127.914667 0 0 0 106.666667 701.226667V853.333333c0 47.146667 38.186667 85.333333 85.333333 85.333334h597.333333c47.146667 0 85.333333-38.186667 85.333334-85.333334v-152.106666c0-60.586667-42.453333-112.853333-101.546667-125.226667z" fill="#696969"></path>
                                </svg>
                                {{i18n .Lang .Member.RoleName}} 超级管理员
                            </span>
                        </li>
                        <li>
                            <a href="{{urlfor "SettingController.Index"}}" class="group flex items-center block px-4 py-2 hover:bg-gray-100 dark:hover:bg-gray-600 dark:hover:text-white lg:hover:text-primary-700">
                                <svg class="w-4 h-4 me-2" viewBox="0 0 1024 1024" version="1.1" xmlns="http://www.w3.org/2000/svg" p-id="2288">
                                    <path class="group-hover:fill-current group-hover:text-primary-700" d="M793.6 316.991454C793.6 153.703982 661.792629 21.333333 499.2 21.333333 336.607371 21.333333 204.8 153.703982 204.8 316.991454 204.8 480.278923 336.607371 612.649572 499.2 612.649572 661.792629 612.649572 793.6 480.278923 793.6 316.991454ZM256 316.991454C256 182.101803 364.88435 72.752137 499.2 72.752137 633.51565 72.752137 742.4 182.101803 742.4 316.991454 742.4 451.881103 633.51565 561.230769 499.2 561.230769 364.88435 561.230769 256 451.881103 256 316.991454Z" fill="#979797" p-id="2289"></path>
                                    <path class="group-hover:fill-current group-hover:text-primary-700" d="M0 998.290598 0 1024 25.6 1024 486.4 1024 998.4 1024 1024 1024 1024 998.290598C1024 767.462671 787.090923 561.230769 512 561.230769 495.448045 561.230769 478.989086 561.900892 462.660538 563.232578 448.568439 564.381869 485.255599 576.786276 486.4 590.938596 501.350035 589.719337 496.831226 612.649572 512 612.649572 760.310844 612.649572 972.8 797.623669 972.8 998.290598L998.4 972.581197 486.4 972.581197 25.6 972.581197 51.2 998.290598C51.2 861.757427 137.013906 736.945338 275.263548 667.439085 287.906261 661.082846 293.024384 645.637353 286.695191 632.94061 280.366001 620.243866 264.986234 615.103872 252.34352 621.460111 97.581613 699.268053 0 841.195691 0 998.290598Z" fill="#979797" p-id="2290"></path>
                                </svg>
                                {{i18n .Lang "common.person_center"}}
                            </a>
                        </li>
                        <li>
                            <a href="{{urlfor "BookController.Index"}}" class="group flex items-center block px-4 py-2 hover:bg-gray-100 dark:hover:bg-gray-600 dark:hover:text-white lg:hover:text-primary-700">
                                <svg class="w-4 h-4 me-2" viewBox="0 0 1024 1024" version="1.1" xmlns="http://www.w3.org/2000/svg" p-id="5165">
                                    <path class="group-hover:fill-current group-hover:text-primary-700" d="M505.6 576c-4.266667 0-6.4 0-10.666667-2.133333L96 362.666667c-6.4-2.133333-10.666667-10.666667-10.666667-17.066667s4.266667-14.933333 10.666667-19.2L507.733333 108.8c6.4-4.266667 12.8-4.266667 19.2 0L928 320c6.4 4.266667 10.666667 10.666667 10.666667 19.2s-4.266667 14.933333-10.666667 19.2L516.266667 573.866667c-4.266667 2.133333-8.533333 2.133333-10.666667 2.133333zM151.466667 345.6l352 185.6 366.933333-192-352-187.733333-366.933333 194.133333z" fill="#979797" p-id="5166"></path>
                                    <path class="group-hover:fill-current group-hover:text-primary-700" d="M505.6 746.666667c-4.266667 0-6.4 0-10.666667-2.133334L96 533.333333c-10.666667-6.4-14.933333-19.2-8.533333-29.866666 6.4-8.533333 19.2-12.8 29.866666-6.4l388.266667 204.8L906.666667 490.666667c10.666667-6.4 23.466667-2.133333 29.866666 8.533333 6.4 10.666667 2.133333 23.466667-8.533333 29.866667L516.266667 744.533333c-4.266667 2.133333-8.533333 2.133333-10.666667 2.133334z" fill="#979797" p-id="5167"></path>
                                    <path class="group-hover:fill-current group-hover:text-primary-700" d="M505.6 917.333333c-4.266667 0-6.4 0-10.666667-2.133333L96 704c-10.666667-6.4-14.933333-19.2-8.533333-29.866667 6.4-8.533333 19.2-12.8 29.866666-6.4l388.266667 204.8L906.666667 661.333333c10.666667-6.4 23.466667-2.133333 29.866666 8.533334 6.4 10.666667 2.133333 23.466667-8.533333 29.866666L516.266667 915.2c-4.266667 2.133333-8.533333 2.133333-10.666667 2.133333z" fill="#979797" p-id="5168"></path>
                                </svg>
                                {{i18n .Lang "common.my_project"}}
                            </a>
                        </li>
                        <li>
                            <a href="{{urlfor "BlogController.ManageList"}}" class="group flex items-center block px-4 py-2 hover:bg-gray-100 dark:hover:bg-gray-600 dark:hover:text-white lg:hover:text-primary-700">
                                <svg class="w-4 h-4 me-2" viewBox="0 0 1024 1024" version="1.1" xmlns="http://www.w3.org/2000/svg" p-id="6191" width="200" height="200">
                                    <path class="group-hover:fill-current group-hover:text-primary-700" d="M682.61 398.43H284.52v56.87h398.09v-56.87zM284.52 796.52h398.09v-56.87H284.52v56.87z m0-170.61h511.83v-56.87H284.52v56.87z m682.44-386.772v-11.317h-11.318L739.48 11.658V0.341h-11.317L727.82 0l-0.34 0.341h-556.7c-62.84 0-113.74 50.899-113.74 113.74v796.18c0 62.84 50.9 113.739 113.74 113.739h682.44c62.84 0 113.74-50.899 113.74-113.74V243.403l2.104-2.104-2.105-2.16zM739.48 92.072l135.748 135.749H739.48V92.072zM910.09 910.26c0 31.392-25.478 56.87-56.87 56.87H170.78c-31.392 0-56.87-25.478-56.87-56.87V114.081c0-31.392 25.478-56.87 56.87-56.87h511.83v227.48h227.48v625.57z" p-id="6192" fill="#979797"></path>
                                </svg>
                                {{i18n .Lang "common.my_blog"}}
                            </a>
                        </li>
                        {{if eq .Member.Role 0  1}}
                        <li>
                            <a href="{{urlfor "ManagerController.Index"}}" class="group flex items-center block px-4 py-2 hover:bg-gray-100 dark:hover:bg-gray-600 dark:hover:text-white lg:hover:text-primary-700">
                                <svg class="w-4 h-4 me-2"  viewBox="0 0 1024 1024" version="1.1" xmlns="http://www.w3.org/2000/svg" p-id="7347" width="200" height="200">
                                    <path class="group-hover:fill-current group-hover:text-primary-700" d="M512 568.889c-159.289 0-284.444-125.156-284.444-284.445S352.71 0 512 0s284.444 125.156 284.444 284.444S671.29 568.89 512 568.89zM512 512c125.156 0 227.556-102.4 227.556-227.556S637.156 56.89 512 56.89s-227.556 102.4-227.556 227.555S386.844 512 512 512z m312.889 512c-79.645 0-142.222-62.578-142.222-142.222s62.577-142.222 142.222-142.222S967.11 802.133 967.11 881.778 904.533 1024 824.89 1024z m0-56.889c45.511 0 85.333-39.822 85.333-85.333s-39.822-85.334-85.333-85.334-85.333 39.823-85.333 85.334 39.822 85.333 85.333 85.333zM796.444 455.111h56.89v284.445h-56.89z m56.89 0H967.11V512H853.333z m0 113.778H967.11v56.889H853.333z" fill="#979797" p-id="7348"></path>
                                    <path class="group-hover:fill-current group-hover:text-primary-700" d="M512 512l-51.2 62.578C261.689 597.333 113.778 762.31 113.778 967.11h-56.89v-56.889h5.69C91.022 688.356 278.756 512 512 512z m0 0l-51.2 62.578C261.689 597.333 113.778 762.31 113.778 967.11h-56.89v-56.889h5.69C91.022 688.356 278.756 512 512 512z" fill="#979797" p-id="7349"></path>
                                </svg>
                                {{i18n .Lang "common.manage"}}
                            </a>
                        </li>
                        {{end}}
                    </ul>
                    <div class="py-2">
                        <a href="{{urlfor "AccountController.Logout"}}" class="group flex items-center block px-4 py-2 text-sm text-gray-700 hover:bg-gray-100 dark:hover:bg-gray-600 dark:text-gray-200 dark:hover:text-white lg:hover:text-primary-700">
                            <svg class="w-4 h-4 me-2" viewBox="0 0 1024 1024" version="1.1" xmlns="http://www.w3.org/2000/svg" p-id="8398" width="200" height="200">
                                <path class="group-hover:fill-current group-hover:text-primary-700" d="M835.669333 554.666667h-473.173333A42.453333 42.453333 0 0 1 320 512a42.666667 42.666667 0 0 1 42.474667-42.666667h473.173333l-161.813333-161.834666a42.666667 42.666667 0 0 1 60.330666-60.330667l234.666667 234.666667a42.666667 42.666667 0 0 1 0 60.330666l-234.666667 234.666667a42.666667 42.666667 0 0 1-60.330666-60.330667L835.669333 554.666667zM554.666667 42.666667a42.666667 42.666667 0 1 1 0 85.333333H149.525333C137.578667 128 128 137.578667 128 149.482667v725.034666C128 886.4 137.6 896 149.525333 896H554.666667a42.666667 42.666667 0 1 1 0 85.333333H149.525333A106.816 106.816 0 0 1 42.666667 874.517333V149.482667A106.773333 106.773333 0 0 1 149.525333 42.666667H554.666667z" fill="#979797" p-id="8399"></path>
                            </svg>

                            {{i18n .Lang "common.logout"}}
                        </a>
                    </div>
                </div>
            </div>

            <div class="hidden justify-between items-center w-full lg:flex lg:w-auto lg:order-1">
                <ul class="flex items-center text-base text-gray-700 flex-col mt-4 font-medium lg:flex-row lg:space-x-8 lg:mt-0">
                    <li>
                        <a href="{{urlfor "HomeController.Index" }}" class="{{if eq .ControllerName "HomeController"}}lg:text-primary-700{{end}} font-semibold block py-2 pr-4 pl-3 text-gray-700 border-b border-gray-100 hover:bg-gray-50 lg:hover:bg-transparent lg:border-0 lg:hover:text-primary-700 lg:p-0" aria-current="page">{{i18n .Lang "common.home"}}</a>
                    </li>
                    <li>
                        <a href="{{urlfor "BlogController.List" }}" class="{{if eq .ControllerName "BlogController"}}lg:text-primary-700{{end}} font-semibold block py-2 pr-4 pl-3 text-gray-700 border-b border-gray-100 hover:bg-gray-50 lg:hover:bg-transparent lg:border-0 lg:hover:text-primary-700 lg:p-0">{{i18n .Lang "common.blog"}}</a>
                    </li>
                    <li>
                        <a href="{{urlfor "ItemsetsController.Index" }}" class="{{if eq .ControllerName "ItemsetsController"}}lg:text-primary-700{{end}} font-semibold block py-2 pr-4 pl-3 text-gray-700 border-b border-gray-100 hover:bg-gray-50 lg:hover:bg-transparent lg:border-0 lg:hover:text-primary-700 lg:p-0">{{i18n .Lang "common.project_space"}}</a>
                    </li>
                    <li>
                        <input autocomplete="search" id="search" name="search" required
                               class="appearance-none rounded-md relative block w-full px-3 py-2 border border-gray-300 placeholder-gray-500 text-gray-900 focus:outline-none focus:ring-indigo-500 focus:border-indigo-500 focus:z-10 sm:text-sm hover:border-indigo-500 transition duration-300"
                               placeholder='search'>
                    </li>
                </ul>
            </div>
        </div>
    </nav>
</header>